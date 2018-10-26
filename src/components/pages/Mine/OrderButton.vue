<template>
    <div class="order-btn">
        <div class="btn">{{btn}}</div>
    </div>
</template>

<script>
export default {
    name:'OrderButton',
    props:['btn']
}
</script>

<style lang="scss" scoped>
.order-btn{
    width: 100%;
    .btn{
        width: 100%;
        height: 0.45rem;
        font-size: 0.14rem;
        line-height: 0.45rem;
        text-align: center;
        color:#FFF;
        background: #f60;
        position: fixed;
        left:0;
        bottom:0;
    }
}
</style>
