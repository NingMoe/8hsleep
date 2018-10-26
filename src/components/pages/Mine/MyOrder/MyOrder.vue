<template>
    <div id="my-order" class="page">
        <app-header :title="title"></app-header>
        <div class="tab">
            <ul>
            <li v-for="(tab,index) in tabs" :key="index" :class="index==isCheckedIdx ? 'selected' :'' " @click="isCheckedIdx =index">{{tab.text}}</li>
            </ul>
        </div>
    </div>
</template>

<script>
import AppHeader from '../../../commons/AppHeader/AppHeader'
export default {
    name: 'MyOrder',
    components:{
        AppHeader
    },
    data(){
        return{
            title:'我的订单',
            tabs:[
                {
                    id:1,
                    text:'全部'
                },
                {
                    id:2,
                    text:'待付款'
                },
                {
                    id:3,
                    text:'待发货'
                },
                {
                    id:4,
                    text:'待收货'
                },
            ],
            isCheckedIdx:this.$route.params.idx
        }
    }
}
</script>

<style lang="scss" scoped>
#my-order{
    width: 100%;
    .tab{
        width: 100%;
        margin-top:0.15rem;
        background: #fff;
        border-bottom:0.01rem solid #f2f2f2;
        ul{
            width: 100%;
            display: flex;
            li{
                font-size: 0.14rem;
                flex: 1;
                height: 0.4rem;
                text-align: center;
                line-height: 0.4rem;
            }
        }
        .selected{
            color:#f00;
        }
    }
}
</style>
