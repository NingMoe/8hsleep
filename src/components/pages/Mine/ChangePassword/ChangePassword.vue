<template>
    <div class="change-password">
        <app-header :title="title"></app-header>
        <div class="main">
            <div class="oldPassword">
                <div>原密码</div>
                <div>
                    <input type="text" :v-model="oldPassword" placeholder="点击输入"/>
                </div>
            </div>
            <div class="newPassword">
                <div>新密码</div>
                <div>
                    <input type="text" :v-model="newPassword" placeholder="点击输入"/>
                </div>
            </div>
            <div class="rePassword">
                <div>重复密码</div>
                <div>
                    <input type="text" :v-model="rePassword" placeholder="点击输入"/>
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
    name:'ChangePassword',
    components:{
        AppHeader,
        OrderButton
    },
    data(){
        return{
            title:'修改密码',
            btn:'确认修改',
            oldPassword:'',
            newPassword:'',
            rePassword:''
        }
    }
}
</script>

<style lang="scss" scoped>
.change-password{
    width: 100%;
    font-size: 0.16rem;
    .main{
        width: 100%;
        margin-top:0.15rem;
    }
}
.main>div{
    overflow: hidden;
    padding:0 0.1rem;
    border-bottom:0.01rem solid #f2f2f2;
}
.main>div>div{
    float: left;
    height: 0.4rem;
    line-height: 0.4rem;
    
}
.main>div :nth-child(1){
    width: 1rem;
}
.main>div :nth-child(2){
    width: 2.55rem;
    input{
            width: 100%;
        }
}
</style>
