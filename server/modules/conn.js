// var mongodb = require("mongodb");
// var MongoClient = mongodb.MongoClient;
// var ObjectId = mongodb.ObjectID;

// var url = "mongodb://localhost:27017/";

// module.exports = function(callback){
//     MongoClient.connect(url, function(err, database) {
//         console.log("数据库成功!");
//         callback(database, ObjectId);
//     });
// }

var mysql = require("mysql");

// 创建连接对象
var conn = mysql.createConnection({
  "host": "localhost",
  "port": "3306",
  "user": "root",
  "password": "",
  "database": "8hsleep",

});
// 连接，mysql服务记得启动
conn.connect();


module.exports = function(sql){
let promise = new Promise((resolve,reject)=>{
    conn.query(sql, function(err, result){
        if(err){
            reject(err);
            return false;
            }
            resolve(result);
        });
    });
    return promise;
}