var express = require('express');
var router = express.Router();

const mysql = require('mysql');

const db = require("../config/congfigdb");

// router.get('test', (req, res) => {

//   let conn = mysql.createConnection(db);

//   conn.query('select * from ls_dev_region', (err, results, fieldes) => {

//     if (err) {
//       throw err;
//     }
//     res.send(results);
//   })

//   conn.end((err) => {
//     console.log(err);
//   })
// });

router.get('/', function (req, res, next) {
  res.send('respond with a resource');
});

module.exports = router;