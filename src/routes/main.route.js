var router = require('express').Router();
var operations;
var operations = require('../controllers/product.controller');


router.post('/', operations.allapi);


module.exports = router;