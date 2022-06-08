var express = require('express');
var router = express.Router();

const mysql = require('mysql');

const db = require("../config/congfigdb");

const test = require("../config/test");


router.get('/sa', function (req, res, next) {
  let conn = mysql.createConnection(db);
  conn.connect();

  let arr = [];
  test.forEach((item) => {
    let sa = {
      value: item.value,
      label: item.label,
      pid: item.pid,
    }
    arr.push(sa)
    if (item.children.length > 0) {
      item.children.forEach((row) => {
        let sb = {
          value: item.value,
          label: item.label,
          pid: item.pid,
        }
        arr.push(sb)
        if (row.children !== undefined && row.children.length > 0) {
          row.children.forEach((vo) => {
            console.log('AAAAA', vo.label)
          })
        }
      })
    }

  })
  res.send("demo");
  // let data = [{ id: 1, name: "办公管理", pid: 0 },
  // { id: 2, name: "请假申请", pid: 1 },
  // { id: 3, name: "出差申请", pid: 1 },
  // { id: 4, name: "请假记录", pid: 2 },
  // { id: 5, name: "系统设置", pid: 0 },
  // { id: 6, name: "权限管理", pid: 5 },
  // { id: 7, name: "用户角色", pid: 6 },
  // { id: 8, name: "菜单设置", pid: 6 },
  // ];
  // function parentDeal (data, pid) {
  //   //声明返回数组
  //   let returnArr = [];
  //   data.forEach((item) => {
  //     if (item.pid === pid) {
  //       //除去最高层级的数据（id === 0）
  //       returnArr.push(item)
  //       //进入递归中处理 
  //       childrenDeal(data, item, item.id)
  //     }
  //   })
  //   return returnArr;
  // }

  // function childrenDeal (arr, itemData, itemId) {
  //   //首先判断是否有子类  没有默认为空
  //   itemData.children = itemData.children ? itemData.children : [];
  //   arr.forEach((item) => {
  //     //递归条件
  //     if (item.pid === itemId) {
  //       //找到则追加至上层数据children中
  //       itemData.children.push(item)
  //       //不断递归查找子类直到找不到子类本次递归结束才进入parentDeal函数进行下一最高层级操作
  //       childrenDeal(arr, item, item.id)
  //     }
  //   })
  // }
  // let resArr = parentDeal(data, 0)
  // console.log("resArr", resArr)

  // conn.query("SELECT * FROM `ls_dev_region` LIMIT 10", (err, results, fieldes) => {
  //   if (err) {
  //     throw err;
  //   }
  //   res.send(results);
  // })
  // conn.query("INSERT INTO `ls_dev_region` ( id, parent_id, LEVEL, NAME, short ) VALUES ( 	343223123,	343223123, 	100, 	'aaaaaaaaaa', 	'aaaaaaaaaaaaaa')", (err, results, fieldes) => {
  //   if (err) {
  //     throw err;
  //   }
  //   res.send(results);
  // })
  // connection.query('insert into `ls_dev_region` (id, parent_id, level, name) values("' + item[0] + '","' + item[1] + '","' + item[2] + '")', function (error, results, fields) {
  //   if (error) throw error;
  //   console.log('The solution is: ', results[0]);
  // })

  conn.end((err) => {
    console.log(err);
  })

  // res.send("conn");
});

module.exports = router;