const express = require('express');
const router = express.Router();
//导入MySQL 模块
const mysql = require('mysql');
//导入配置文件
const db = require('../config/configdb');

router.get('test', (req, res) => {
  //创建数据库连接对象
  let conn = mysql.createConnection(db);
  //查询bookinfo中所有数据
  conn.query('select * from student', (err, results, fieldes) => {
    //fieldes表示具体的字段
    if (err) {
      throw err;
    }
    res.send(results);
  })
  //关闭数据库链接
  conn.end((err) => {
    console.log(err);
  })
};

module.exports = router