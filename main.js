const express = require('express');
const app = express();

const path = __dirname + '/front/';

app.listen(8080,()=> {
    console.log('listen port 8000');
});

app.get('/hello_world', (req,res)=>{
    res.send('Oi, meu nome é Linda Santos');
});

app.get('/',(req,res) => {
    res.sendFile(path + 'index.html');
});

app.get('/health',(req,res)=>{
    res.send('ok');
});