<template>
    <div class="cart">
        <app-header :title="title"></app-header>
    </div>
</template>

<script>
import AppHeader from '../../commons/Appheader/AppHeader'
export default {
    name:'Cart',
    components:{
        AppHeader
    },
    data(){
        return{
            title:'购物车'
        }
    }
}
</script>

<style lang="scss" scoped>

</style>
