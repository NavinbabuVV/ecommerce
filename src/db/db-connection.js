var pg = require('pg')


var config = {

    user: 'postgres',
    host: 'localhost',
    database: 'ecommerce',  // database name
    password: 'postgres',
    port: 5432,
    max: 10, // max number of clients in the pool
    idleTimeoutMillis: 30000

}
var pool = new pg.Pool(config);
// pg.connect();
module.exports = pool;
