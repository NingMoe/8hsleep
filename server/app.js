var express = require("express");
var app = express();
var fs = require("fs");
app.use(express.static('./public'));
var session = require("express-session");
app.use(session({"secret":"wy"}));
var cookieParser = require('cookie-parser');
app.use(cookieParser());
var bodyParser = require('body-parser');
var querystring = require("querystring"); 
app.use(bodyParser.json());


var conn = require("./modules/conn.js");

app.all("*",function(req,res,next){
    //允许别人请求我的接口
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With,Content-Type");
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
    // res.writeHeader(200, {'Content-Type' : 'text/html;charset:utf-8'
	// });
    res.setHeader("Content-Type","text/html;charset=utf-8");
    // res.setHeader("Access-Control-Allow-Credentials","true");
    // res.setHeader("Access-Control-Allow-Origin","http://10.3.137.10:8081");
    next();
})

//轮播图请求
app.get('/lunbo',function(req,res){
    conn("select * from lunbo").then(x=>{
        console.log(x);
        res.end(JSON.stringify(x));
    })
});
//热销产品
app.get('/hotsale',function(req,res){
    conn("select * from hotsale").then(x=>{
        console.log(x);
        res.end(JSON.stringify(x));
    })
});
//特惠产品
app.get('/tehui',function(req,res){
    conn("select * from tehui").then(x=>{
        console.log(x);
        res.end(JSON.stringify(x));
    })
});
//产品详情
app.post('/details',function(req,res){
    let id = req.body.id;
    conn("select * from product_skucolor where pid=id").then(x=>{
        console.log(x);
        res.end(JSON.stringify(x));
    })
});
//注册验证
app.post('/regcheck',function(req,res){
    let telphone = req.body.telphone;
    // let password = req.body.password;
    conn("select * from userlist where telphone=telphone").then(x=>{
        if(x.length != 0){
            res.end("电话号码已注册过了，直接去登录吧");
        }
    })
})
//注册写入数据库
app.post('/reg',function(req,res){
    let rtelphone = req.body.telphone;
    let rpassword = req.body.password;
    // let rtelphone = 1376973648;
    // let rpassword = 123456;
    conn("insert into userlist (telphone,password) value(rpassword,rpassword)").then(x=>{
        console.log(x,telphone,password);
        res.end('注册成功');
    })
})
//登录
app.post('/login',function(req,res){
    let ltelphone = req.body.telphone;
    let lpassword = req.body.password;
    conn('select * form userlist where telphone=ltelphone and password=lpassword').then(x=>{
        if(x.length!=0){
            console.log('登录成功',x);
            res.end(JSON.stringify(x));
        }else{
            res.end('用户或密码不正确');
        }
    })
});
//获取我的信息
app.post('/mine',function(req,res){
    let zuserid=req.body.userid;
    conn('select * from userlist where userid= zuserid').then(x=>{
        console.log(x);
            res.end(JSON.stringify(x));
    })
})
//完善我的信息
app.post('/wanshan',function(req,res){
    let xusername = req.body.username;
    let xQQ = req.body.QQ;
    let xemail = req.body.email;
    conn('inert into userlist (username,QQ,email) value(xusername,xQQ,xemail)').then(x=>{
        console.log('插入数据成功',x)
    })
})
//修改密码
app.post('/xgmm',function(req,res){
    let ypassword = req.body.password;
    let ztelphone = req.body.telphone;
    let npassword = req.body.xpassword;
    conn('select * from userlist where telphone=ztelphone and password=ypassword').then(x=>{
        if(x.length!=0){
            conn('insert into userlist (password) value (npassword) where telphone=ztelphone and password=ypassword ').then(x=>{
                console.log('密码修改成功',x);
                res.end('密码修改成功');
            });
        }else{
            res.end('原密码不正确');
        }
    })
})
//添加地址
app.post('/address',function(req,res){
    let auerid = req.body.userid;
    let aname = req.body.name;
    let atelnumber = req.body.telnumber;
    let aarea = req.body.area;
    let adetails = req.body.details;
    conn('insert into address (userid,name,telunmber,area,details) value(auserid,aname,atelnumber,aarea,adetails)').then(x=>{
        console.log('添加地址成功',x);
        res.end('添加地址成功');
    }) 
})
//渲染地址
app.post('/xaddress',function(req,res){
    let zuserid = req.body.userid;
    conn('select * from address where userid=zuserid').then(x=>{
        console.log(x);
        res.end(JSON.stringify(x));
    })
})
//加入购物车的产品写进数据库
app.post('/addcart',function(req,res){
    let cimgurl = req.body.imgurl;
    let ctitle = req.body.title;
    let csize = req.body.size;
    let ctype = req.body.type;
    let cprice = req.body.price;
    let ccount = req.body.count;
    let cpid = req.body.pid;
    conn('insert into cartlist (imgurl,title,size,type,price,count,pid) value(cimgurl,ctitle,csize,ctype,cprice,ccount,cpid)').then(x=>{
        console.log('添加购物车成功',x);
        res.end('添加购物车成功');
    })
})

//下单并写进数据库
app.post('/addorder',function(req,res){
    let zuserid =  req.body.userid;
    let zpid = req.body.pid;
    conn('insert into orderlist (userid,pid,status) value(zuserid,zpid,1)').then(x=>{
        console.log('插入订单成功',x);
        res.end('插入订单成功');
    })
})
//付款成功更新订单状态
app.post('/upstatus',function(req,res){
    let zuserid =  req.body.userid;
    let zpid = req.body.pid;
    conn('update orderlist set (status=2) where userid=zuserid and pid=zpid').then(x=>{
        console.log('更新订单成功',x);
        res.end('更新订单成功');
    })
})
//该用户的所有订单查询
app.post('/getAll',function(req,res){
    let xuserid = req.body.userid
    conn('select * from orderlist where userid=xuserid').then(x=>{
        console.log(x);
        res.end(JSON.stringify(x));
    })
})
//该用户的待付款订单
app.post('/daifu',function(req,res){
    let xuserid = req.body.userid;
    // let xstatus = req.body.status;
    conn('select * from orderlist where userid=xuserid and status=1').then(x=>{
        console.log(x);
        res.end(JSON.stringify(x));
    })
})
//该用户的待发货订单
app.post('/daifa',function(req,res){
    let xuserid = req.body.userid;
    // let xstatus = req.body.status;
    conn('select * from orderlist where userid=xuserid and status=2').then(x=>{
        console.log(x);
        res.end(JSON.stringify(x));
    })
})
//该用户的待收货订单
app.post('/daishou',function(req,res){
    let xuserid = req.body.userid;
    // let xstatus = req.body.status;
    conn('select * from orderlist where userid=xuserid and status=3').then(x=>{
        console.log(x);
        res.end(JSON.stringify(x));
    })
})
app.listen(8082);