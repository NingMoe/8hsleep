<template>
    <div id="mine" class="page">
        <app-header :title="title"></app-header>
        <div class="userInfo">
            <div class="name"></div>
            <div class="gradename"></div>
            <div class="grade"></div>
        </div>
        <div class="my_order" @click="$router.push({name:'myorder',params:{idx:0}})">
            <span>我的订单</span>
            <span class="check_order fr">查看订单 <i class="fa fa-angle-right"></i></span>
        </div>
        <div class="order_list">
            <ul>
                <li v-for="(item,idx) in order_list" :key="item.id" @click="$router.push({name:'myorder',params:{idx:idx}})">
                    <i :class="'fa fa-' + item.icon"></i>
                    <span>{{item.text}}</span>
                </li>
            </ul>
        </div>
        <div class="menage">
            <div @click="$router.push({name:'address'})"><span>我的地址</span> <i class="fa fa-angle-right"></i></div>
            <div @click="$router.push({name:'myinfo'})"><span>我的个人信息</span><i class="fa fa-angle-right"></i></div>
            <div @click="$router.push({name:'changepassword'})"><span>修改密码</span><i class="fa fa-angle-right"></i></div>
            <div @click="exit"><span>退出登录</span><i class="fa fa-angle-right"></i></div>
        </div>
    </div>
</template>

<script>
import AppHeader from '../../commons/AppHeader/AppHeader'
import { MessageBox } from 'mint-ui';
export default {
    name:'Mine',
    components:{
        AppHeader
    },
    data(){
        return {
            title: '个人中心',
            order_list:[
                {
                    id:1,
                    text:'全部',
                    icon:'folder-open-o'
                },
                {
                    id:2,
                    text:'待付款',
                    icon:'barcode'
                },
                {
                    id:3,
                    text:'待发货',
                    icon:'truck'
                },
                {
                    id:4,
                    text:'待收货',
                    icon:'shopping-bag'
                }
            ]
        }
    },
    methods:{
        exit(){
            MessageBox({
                title: '温馨提示',
                message: '确定退出登录?',
                showCancelButton: true,
                confirmButtonText:'确认',
                cancelButtonText:'再看一会～'
                }).then(action=>{
                    if(action == 'confirm'){
                        console.log('确认退出')
                    }else{
                        console.log('取消')
                    }
                })
        }
    }

    
}
</script>

<style lang="scss" scoped>
#mine{
    width: 100%;
    .userInfo{
        width: 100%;
        height: 1.35rem;
        background: url('http://w.kl.126.net/res/images/personal/userCenter/profile-bg.png?6d111bc9fc56e0026c4093e47e330116')
    }
    .my_order{
        width: 100%;
        height: 0.5rem;
        padding:0 0.15rem;
        line-height: 0.5rem;
        font-size: 0.16rem;
        border-bottom:0.01rem solid #f2f2f2;
        background: #fff;
        .check_order{
            color: #ccc;
            i{
                color:#333;
            }
        }
    }
    .order_list{
        width: 100%;
        background: #fff;
        margin-bottom:0.15rem;
        ul{
            width: 100%;
            display: flex;
            li{
                flex: 1;
                font-size: 0.16rem;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                height: 0.65rem;
                color: #333;
                i{
                    font-size: 0.2rem;
                    color:#bbb;
                }
            }
        }
    }
    .menage{
        font-size: 0.16rem;
        background:#fff;
        div{
            padding:0 0.15rem;
            height: 0.5rem;
            line-height: 0.5rem;
            border-bottom:0.01rem solid #f2f2f2;
            i{
                float: right;
                margin-top:0.14rem;
            }
        }
    }
}
</style>
