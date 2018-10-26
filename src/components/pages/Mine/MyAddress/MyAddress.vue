<template>
    <div class="my-address">
        <app-header :title="title"></app-header>
        <div class="line"></div>
        <order-button :btn="btn"></order-button>

    </div>
</template>

<script>
import AppHeader from '../../../commons/AppHeader/AppHeader'
import OrderButton from '../OrderButton'
export default {
    name:'MyAddress',
    components:{
        AppHeader,
        OrderButton
    },
    data(){
        return {
            title:'收货地址',
            btn:'新增地址'
        }
    }
}
</script>

<style lang="scss" scoped>
.line{
    width: 100%;
    height: 0.03rem;
    background: url('http://m.8hsleep.com/images/icon/add_line.png')
}
</style>
