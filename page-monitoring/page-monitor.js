// setup
'use strict';

process.on('uncaughtException', (err) => {
  const d = new Date();
  const time = d.getDate()+'/'+(d.getMonth()+1)+'/'+d.getFullYear()+' '+d.getHours()+':'+d.getMinutes()+':'+d.getSeconds()+'.'+d.getMilliseconds();
  console.error(time+': ', err);
});
process.env.NODE_ENV = 'production';
const fs = require('fs');
let config;
try{
  const configFile = __dirname+'/config.json';
  if(!fs.existsSync(configFile)){
    throw new Error('File config.json not exist.');
  }
  config = JSON.parse(fs.readFileSync(configFile));
}catch(e){
  console.error(e);
  process.exit(1);
}
const default_options = {
  page: {
    viewportSize: {
      width: 1024,
      height: 1000
    },
    settings: {
      resourceTimeout: 20000,
      userAgent: 'Googlebot'
    }
  },
  walk: {
    invisibleElements : [
      'applet', 'area', 'audio', 'base', 'basefont',
      'bdi', 'bdo', 'big', 'br', 'center', 'colgroup',
      'datalist', 'form', 'frameset'/*, 'head', 'link'*/,
      'map', /*'meta',*/ 'noframes', 'noscript', 'optgroup',
      'option', 'param', 'rp', 'rt', 'ruby', /* 'script' */,
      'source', /* 'style' */, 'title', 'track', 'xmp'
    ],
    ignoreChildrenElements: [
      'img', 'canvas', 'input', 'textarea', 'audio',
      'video', 'hr', 'embed', 'object', 'progress',
      'select'/*, 'table'*/
    ],
    styleFilters: [
      'margin-left', 'margin-top', 'margin-right', 'margin-bottom',
      'border-left-color', 'border-left-style', 'border-left-width',
      'border-top-color', 'border-top-style', 'border-top-width',
      'border-right-color', 'border-right-style', 'border-right-width',
      'border-bottom-color', 'border-bottom-style', 'border-bottom-width',
      'border-top-left-radius', 'border-top-right-radius',
      'border-bottom-left-radius', 'border-bottom-right-radius',
      'padding-left', 'padding-top', 'padding-right', 'padding-bottom',
      'background-color', 'background-image', 'background-repeat',
      'background-size', 'background-position',
      'list-style-image', 'list-style-position', 'list-style-type',
      'outline-color', 'outline-style', 'outline-width',
      'font-size', 'font-family', 'font-weight', 'font-style', 'line-height',
      'box-shadow', 'clear', 'color', 'display', 'float', 'opacity', 'text-align',
      'text-decoration', 'text-indent', 'text-shadow', 'vertical-align', 'visibility',
      'position'
    ],
    // attributes to mark an element
    attributeFilters: [ 'id', 'class', 'onmouseover' ],
    excludeSelectors: [],
    removeSelectors: [],          // remove elements before walk
    ignoreTextSelectors: [],      // ignore content change of text node or image change
    ignoreStyleSelectors: [],     // ignore style change
    ignoreChildrenSelectors: [],  //
    root: 'html'
  },
  diff: {
    // LCS diff priority, `head` or `tail`
    priority: 'head',
    // highlight mask styles
    highlight: {
      add: {
        title: 'Thêm (Added)',
        backgroundColor: 'rgba(127, 255, 127, 0.3)',
        borderColor: '#090',
        color: '#060',
        textShadow: '0 1px 1px rgba(0, 0, 0, 0.3)'
      },
      remove: {
        title: 'Xoá (Removed)',
        backgroundColor: 'rgba(0, 0, 0, 0.5)',
        borderColor: '#999',
        color: '#fff'
      },
      style: {
        title: 'Giao diện (Style)',
        backgroundColor: 'rgba(255, 0, 0, 0.3)',
        borderColor: '#f00',
        color: '#f00'
      },
      text: {
        title: 'Văn bản (Text)',
        backgroundColor: 'rgba(255, 255, 0, 0.3)',
        borderColor: '#f90',
        color: '#c30'
      }
    }
  },
};

const Monitor = require('page-monitor');
const mysql = require('mysql');
const express = require('express');
function getTimeNow(){
  const d = new Date();
  return d.getDate()+'/'+(d.getMonth()+1)+'/'+d.getFullYear()+' '+d.getHours()+':'+d.getMinutes()+':'+d.getSeconds()+'.'+d.getMilliseconds();
}
function getUuid(){return (Date.now().toString(36)+Math.random().toString(36).substr(2,12)).toUpperCase()}
const pool  = mysql.createPool({
  connectionLimit : 10,
  host            : config.mysql.host,
  user            : config.mysql.user,
  password        : config.mysql.pass,
  database        : config.mysql.db
});
pool.on('connection', conn => {
  conn.query('SET NAMES utf8');
});

// app
const app = express();
const compression = require('compression');
app.disable('x-powered-by');
app.use(compression({
  /* or use res.flush()
  filter: (req, res) => {
    const headerType = 'text/event-stream';
    if(req.headers.accept === headerType){
      return false;
    }
    return compression.filter(req, res);
  },
  */
  threshold: 0 // for static
  }));
app.use((req, res, next) => {
  res.append('Access-Control-Allow-Credentials', 'true');
  if(req.headers['origin']){
    res.append('Access-Control-Allow-Origin',req.headers['origin']||'*');
    res.append('Access-Control-Max-Age', 3600*2);
  }
  if(~['HEAD', 'OPTIONS'].indexOf(req.method.toUpperCase()) || req.headers['access-control-request-method']) {
    res.append('Access-Control-Allow-Methods', req.headers['access-control-request-method']||req.method.toUpperCase());
    res.append('Access-Control-Allow-Headers', req.headers['access-control-request-headers']||'content-type, x-token');
    res.append('Accept','application/json, text/javascript, text/plain');
    if(~['HEAD', 'OPTIONS'].indexOf(req.method.toUpperCase())){
      res.end();
      return;
    }
  }
  next();
});

app.get('/login', (req, res) => {
  try{
    let token = req.headers['x-token'];
    if(!token){
      res.json({error: 'Vui lòng nhập đầy đủ thông tin.'});
      return;
    }
    token = JSON.parse(Buffer.from(token, 'base64').toString());
    if(token.email === config.admin.email && token.pass === config.admin.pass){
      res.json({success: 'Đăng nhập thành công.'});
      return;
    }
    res.json({error: 'Không đăng nhập được.'});
    return;
  }catch(e){
    console.error('login:', e);
  }
  res.json({error: 'Không rõ lỗi.'});
});

const queue = [];
const activeConnection = {};
app.get('/notifications', (req, res) => {
  // res.removeHeader('Transfer-Encoding'); or use res.flush()
  let token = req.query.token;
  if(!token){
    res.json({error: 'Empty token.'});
    return;
  }
  token = JSON.parse(Buffer.from(token, 'base64').toString());
  if(!(token.email === config.admin.email && token.pass === config.admin.pass)){
    res.json({error: 'Invalid token.'});
    return;
  }
  const headerType = 'text/event-stream';
  if(req.headers.accept !== headerType) {
    res.end();
    return;
  }
  const uuid = getUuid();
  req.uuid = uuid;
  res.uuid = uuid;
  req.connection.on("close", () => {
    console.log('notifications: req closed');
    try{
      delete activeConnection[uuid];
      const i = queue.indexOf(uuid);
      if(~i)
        queue.splice(i, 1);
      res.end();
    }catch(e){}
  });
  res.writeHead(200, {
    'Access-Control-Allow-Credentials': 'true',
    'Content-Type': headerType,
    'Cache-Control': 'no-cache',
    'Connection': 'keep-alive'
  });
  res.write(':'+' '.repeat(2048)+"\n");
  res.flush();
  res.write("retry: 2000\n");
  res.flush();
  pool.query('select id, name, value, extra from settings where name !="url" and extra != -1 order by id asc', (e, r) => {
    pool.query('update settings set extra=1 where name!="url" and extra = 0', e => {
      if(e){
        res.end();
        console.error('notifications:', e);
      }
    });
    if(e) throw e;
    const writeData = [];
    r.forEach(r => {
      writeData.push("event: noti\ndata:"+JSON.stringify([r.name, r.value, r.extra, r.id])+"\n\n");
    });
    if(writeData.length){
      res.write(writeData.join(''));
      res.flush();
    }
    activeConnection[uuid] = res;
    queue.push(uuid);
  });
});
app.post('/sites/:site', (req, res) => {
  let token = req.headers['x-token']||req.query.token;
  if(!token){
    res.json({error: 'Empty token.'});
    return;
  }
  token = JSON.parse(Buffer.from(token, 'base64').toString());
  if(!(token.email === config.admin.email && token.pass === config.admin.pass)){
    res.json({error: 'Invalid token.'});
    return;
  }
  const site = req.params.site;
  const {URL} = require('url');
  try{
    const url = new URL(site);
    pool.query('insert settings set name=?, value=?, extra=?', ['url', site, -1], e => {
      if(e){
        res.json({error: 'Lỗi cơ sở dữ liệu.'});
        return;
      }
      res.json({
        success: true
      });
    });
  }catch(e){
    res.json({error: 'Invalid url.'});
  }
});
app.get('/sites', (req, res) => {
  let token = req.headers['x-token']||req.query.token;
  if(!token){
    res.json({error: 'Empty token.'});
    return;
  }
  token = JSON.parse(Buffer.from(token, 'base64').toString());
  if(!(token.email === config.admin.email && token.pass === config.admin.pass)){
    res.json({error: 'Invalid token.'});
    return;
  }
  pool.query('select id, value from settings where name = ? and extra = ? order by id desc', ['url', -1], (e, r) => {
    if(e){
      res.json({error: 'Lỗi cơ sở dữ liệu.'});
      return;
    }
    res.json({success: r});
  });
});
app.delete('/sites/:id', (req, res) => {
  let token = req.headers['x-token']||req.query.token;
  if(!token){
    res.json({error: 'Empty token.'});
    return;
  }
  token = JSON.parse(Buffer.from(token, 'base64').toString());
  if(!(token.email === config.admin.email && token.pass === config.admin.pass)){
    res.json({error: 'Invalid token.'});
    return;
  }
  const id = req.params.id;
  if(!parseInt(id)){
    res.json({error: 'ID is number.'});
    return;
  }
  pool.query('delete from settings where id = ? and name=? and extra = ? limit 1', [id, 'url', -1], e => {
    if(e){
      res.json({error: 'Lỗi cơ sở dữ liệu.'})
      return;
    }
    res.json({success: true});
  });
});

app.delete('/notification/:id', (req, res) => {
	if(isNaN(req.params.id)){
		res.json({error: 'id?'});
		return;
	}
	pool.query('delete from settings where id = ? limit 1', [req.params.id], e => {
		if(e){
			console.error(e)
			res.json({error: 'db error'});
			return;
		}
		res.json({success: true});
	});
});

app.delete('/notifications', (req, res) => {
  let token = req.headers['x-token']||req.query.token;
  if(!token){
    res.json({error: 'Empty token.'});
    return;
  }
  token = JSON.parse(Buffer.from(token, 'base64').toString());
  if(!(token.email === config.admin.email && token.pass === config.admin.pass)){
    res.json({error: 'Invalid token.'});
    return;
  }
  pool.query('delete from settings where name!=? and extra != ?', ['url', -1], e => {
    if(e){
      res.json({error: 'Lỗi cơ sở dữ liệu.'});
      return;
    }
    res.json({success: true});
  });
});
app.get('/view/:path', (req, res) => {
  let token = req.headers['x-token']||req.query.token;
  if(!token){
    res.json({error: 'Empty token.'});
    return;
  }
  token = JSON.parse(Buffer.from(token, 'base64').toString());
  if(!(token.email === config.admin.email && token.pass === config.admin.pass)){
    res.json({error: 'Invalid token.'});
    return;
  }
  const path = req.params['path'];
  if(!path){
    res.end();
    return;
  }
  if(!(path.toLowerCase().startsWith(__dirname.toLowerCase()) && path.toLowerCase().endsWith('.jpg') && fs.existsSync(path))){
    res.end();
    return;
  }
  res.append('Content-Type', 'image/jpeg');
  fs.createReadStream(path).pipe(res);
});

app.use('/', express.static(require('path').join(__dirname, 'public')));
app.use((err, req, res, next) => {
  if(err) {
    console.error('error:',err.stack);
    if (!res.headersSent) {
      res.status(500).json({error: 'Something broke!'});
    }else{
      try{
        res.end();
      }catch(e){
        console.error('error:', e);
      }
    }
  }
});

// 404 not found handler
app.all('*', (req, res) => {
  if(!res.headersSent){
    res.status(404).json({error: 'Not Found'});
  }else{
    try{
      res.end();
    }catch(e){
      console.error('all:',e);
    }
  }
});
const http = require('http').Server(app);
http.listen(process.env.PORT||3000, () => {
 const serverAddress = http.address();
 console.info("App is listening at %s:%s", serverAddress.address, serverAddress.port);
});


// monitor
const CronJob = require('cron').CronJob;
// fuck http module, its default req timeout = 2min
new CronJob('0 * * * * *', () => {
  setImmediate(pingClient);
}, () => {}, true, 'Asia/Ho_Chi_Minh');
new CronJob(config['cron-duration'], () => {
  doMonitor(Date.now());
}, () => {}, true, 'Asia/Ho_Chi_Minh');
function doMonitor (timeNow){
  console.log('cron: run monitor');
  pool.query('SELECT id,value from settings where name=? and extra=? ', ['url', -1], (e, r, f) => {
    if (e) throw e;
    r.forEach((r) => {
      const url = r.value;
      const id = r.id;
      const monitor = new Monitor(url, default_options);
      console.log('monitor:', url);
      monitor.on('debug', data => {
        // console.log('[PHANTOM] ' + data);
      });
      monitor.on('notice', data => {
        // console.log('[WEBPAGE] ' + data);
      });
      monitor.on('warning', data => {
        console.log('[WEBPAGE] ' + data);
      });
      monitor.on('info', data => {
        // console.log('[PHANTOM] ' + data);
      });
      monitor.on('error', data => {
        // console.error('[PHANTOM] ' + data);
      });
      monitor.capture(code => {
        console.log('[DONE capture], exit [' + code + ']');
        if(monitor.log && monitor.log.info){
          monitor.log.info.forEach(info => {
            try{
              info = JSON.parse(info)
              if(info.diff)
                noti(url, info.diff);
            }catch(e){
              console.error('diff:',e);
            }
          });
        }
      }, false);
    });
  });
}
function noti(url, data){
  console.log('noti');
  data = ['Website '+url+' bị thay đổi vào '+getTimeNow(), JSON.stringify(data), 0];
  pool.query('insert settings set name=?, value=?, extra = ?', data, (e, r) => {
    if(e){
      console.error('insert: ',e);
    }
	data.push(r.insertId)
	
	// send notification
	  const inactiveConns = [];
	  queue.forEach(uuid => {
		const res = activeConnection[uuid];
		if(!(res && res.connection && res.connection.writable)){
		  inactiveConns.push(uuid);
		  return;
		}
		res.write("event: noti\ndata: "+JSON.stringify(data)+"\n\n");
		res.flush();
	  });
	  if(inactiveConns.length > 0){
		inactiveConns.forEach(uuid => {
		  try{
			const res = activeConnection[uuid];
			delete activeConnection[uuid];
			const i = queue.indexOf(uuid);
			if(~i)
			  queue.splice(i, 1);
			res.end();
		  }catch(e){}
		});
	  }
  });
}
function pingClient(){
  console.log('ping client');
  const inactiveConns = [];
  queue.forEach(uuid => {
    const res = activeConnection[uuid];
    if(!(res && res.connection && res.connection.writable)){
      inactiveConns.push(uuid);
      return;
    }
    res.write(':\n');
    res.flush();
  });
  if(inactiveConns.length > 0){
    inactiveConns.forEach(uuid => {
      try{
        const res = activeConnection[uuid];
        delete activeConnection[uuid];
        const i = queue.indexOf(uuid);
        if(~i)
          queue.splice(i, 1);
        res.end();
      }catch(e){}
    });
  }
}
