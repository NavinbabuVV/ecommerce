
var express = require('express');
var app = express();
cors = require('cors');
const { Client } = require('pg');
const bodyParser = require('body-parser');


const http = require('http');

const dbaccess = require('./src/db/db-connection');
const usersRouter = require('./src/routes/main.route');

app.use(cors())

app.use(bodyParser.json()); // application/json 


app.use('/', cors(), function (req, res, next) {

    next()

    // res.status(200).send('Hello World!');
}, usersRouter);

var port = process.env.PORT || 3000;


const server = http.createServer(app);

server.listen(port, function () {
    console.log('Express server listening on port ' + port);
});


