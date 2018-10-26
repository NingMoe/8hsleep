<template>
    <div id="app-header">
        <div class="back" @click="$router.go(-1)">
            <i class="fa fa-angle-left"></i>
        </div>
        <div class="title">{{title}}</div>
    </div>
</template>

<script>
export default {
    name: 'AppHeader',
    props:['title']
}
</script>

<style lang="scss" scoped>
#app-header{
    width: 100%;
    height: 0.45rem;
    position: relative;
    background: #fff;
    .back{
        width: 0.45rem;
        height: 0.45rem;
        text-align: center;
        line-height: 0.45rem;
        font-size: 0.24rem;
    }
    .title{
        position: absolute;
        left:50%;
        top:50%;
        height: 0.45rem;
        font-size: 0.18rem;
        transform: translate(-50%,-50%);
        line-height: 0.45rem;
    }
}
</style>
