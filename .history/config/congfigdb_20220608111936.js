var mysql = {
  host: "127.0.0.1",//这是数据库的地址
  user: "root",//需要用户的名字
  password: "root23",//用户密码 ，如果你没有密码，直接双引号就是
  database: "info",//数据库名字
  port: 3306//数据库使用的端口号
}
module.exports = mysql;//用module.exports暴露出这个接口