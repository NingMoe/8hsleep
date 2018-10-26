<template>
    <input :type="type" :placeholder="phder" />
</template>

<script>
export default {
    name:'AppInput',
    props:{
        type:{
            type:String,
            default:'text'
        },
        phder:{
            type:String
        }
    }
}
</script>

<style lang="scss" scoped>


    input{
        display: inline-block;
        width: 100%;
        height: 0.4rem;
        border-bottom: 0.01rem solid #e8e8e8;
    }

</style>
