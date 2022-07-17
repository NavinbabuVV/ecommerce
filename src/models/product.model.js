
var pg = require('../db/db-connection.js');
const format = require('pg-format');



var Task = function (task) {
    this.task = task.task;
    this.status = task.status;
    this.created_at = new Date();
};


Task.apiaccess = function (ip, result, callback) {


    if (result.element_data.action == "product_details") {


        qry = format(
            "SELECT * FROM products");


        qry_res = SyncFunction(qry);

    } else if (result.element_data.action = "insert_product") {


        console.log('insert product');


        var insert_qry = "INSERT INTO products(productName,productPrice,shortDesc) values ('" + result.element_data.product_name + "','" + result.element_data.product_price + "')";

        var insert_qry_res = SyncFunction(insert_qry);

        var result_data;
        if (insert_qry_res.rows && insert_qry_res.rowCount != 0) {
            result_data = 1;
        }
        else {
            result_data = 0;
        }


        responsedata.status = true;
        resultdatas.status = true;

        resultdatas.data = result_data;
        responsedata.result = resultdatas;
        callback(responsedata);

    }


}



function SyncFunction(Query) {
    var ret;
    pg.query(Query, (err, result) => {
        if (err) {
            return console.error('Error executing query', err.stack)
        }
        ret = result;

    })

    while (ret === undefined) {
        require('deasync').sleep(100);
    }


    // returns hello with sleep; undefined without
    return ret;

}