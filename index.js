const express = require('express');
const expressApp = express();
const path = require('path');
const groxLog = require('./www/js/groxlog');
const gl = new groxLog.GroxLog();
const portNum = 8787;
const htmlHome = path.join(__dirname, 'www/html');

//display start page at specified port
expressApp.get('/', function(req, res) {
  res.sendFile(path.join(htmlHome, 'index.html'));
  gl.appendToLogFile('root page request');  
});

expressApp.use(express.static(path.join(htmlHome)));

expressApp.listen(portNum);
console.log(`listening at port ${portNum}`);

