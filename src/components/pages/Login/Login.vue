<template>
    <div class="login">
        <app-input :phder="usertxt"></app-input>
        <app-input :phder="pwdtxt" :type="type"></app-input>
    </div>
</template>

<script>
import AppInput from '../../commons/AppInput/AppInput'
export default {
    name:'Login',
    components:{
        AppInput
    },
    data(){
        return{
            usertxt:'账号',
            pwdtxt:'密码',
            type:'password'
        }
    }
}
</script>

<style lang="scss" scoped>

</style>
