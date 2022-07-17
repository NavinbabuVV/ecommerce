var Products = require('../models/product.model.js');



exports.allapi = function (req, res) {


    if (req.body.moduleType == 'product') {

        Products.apiaccess(req.ipInfo, req.body, function (err, task) {



            if (err)
                res.send(err);

            res.send(task);
        });


    } else {
        var responsedata = {};
        var errormsg = {};
        errormsg.code = "ACCESS_DENIED";
        errormsg.message = "Invalid credentials1.";
        responsedata.status = "false";

        responsedata.error = errormsg;
        res.send(responsedata);


    }

}