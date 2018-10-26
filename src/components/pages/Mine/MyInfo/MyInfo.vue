<template>
    <div class="my-info">
        <app-header :title="title"></app-header>
        <div class="form">
            <div class="phone">
                <div>手机</div>
                <div>{{phone}}</div>
            </div>
            <div class="nickname">
                <div>昵称</div>
                <div>
                    <input type="text" :v-model="nickname" placeholder="点击输入"/>
                </div>
            </div>
            <div class="email">
                <div>邮箱</div>
                <div>
                    <input type="text" :v-model="email" placeholder="点击输入"/>
                </div>
            </div>
            <div class="qq">
                <div>QQ</div>
                <div>
                    <input type="text" :v-model="qq" placeholder="点击输入"/>
                </div>
            </div>
        </div>
        <order-button :btn="btn"></order-button>
    </div>
</template>

<script>
import AppHeader from '../../../commons/AppHeader/AppHeader'
import OrderButton from '../OrderButton'
export default {
    name:'MyInfo',
    components:{
        AppHeader,
        OrderButton
    },
    data(){
        return{
            title:'我的信息',
            btn:'保存',
            phone:15678357813,
            nickname:'',
            email:'',
            qq:''
        }
    }
}
</script>

<style lang="scss" scoped>
.my-info{
    width: 100%;
    font-size: 0.16rem;
    .form{
        width: 100%;
        margin-top:0.15rem;
    }
}
.form>div{
    overflow: hidden;
    padding:0 0.1rem;
    border-bottom:0.01rem solid #f2f2f2;
}
.form>div>div{
    float: left;
    height: 0.4rem;
    line-height: 0.4rem;
    
}
.form>div :nth-child(1){
    width: 1rem;
}
.form>div :nth-child(2){
    width: 2.55rem;
    input{
            width: 100%;
        }
}
</style>
