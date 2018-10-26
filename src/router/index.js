import Vue from 'vue'
import Router from 'vue-router'
Vue.use(Router)

import Mine from '../components/pages/Mine/Mine'
import Cart from '../components/pages/Cart/Cart'
import Login from '../components/pages/Login/Login'
import Register from '../components/pages/Register/Register'
import MyOrder from '../components/pages/Mine/MyOrder/MyOrder'
import MyAddress from '../components/pages/Mine/MyAddress/MyAddress'
import MyInfo from '../components/pages/Mine/MyInfo/MyInfo'
import ChangePassword from '../components/pages/Mine/ChangePassword/ChangePassword'
//路由表, 设置路由切换的规则
let routes = [
    {
        path:'/mine',
        name:'mine',
        component:Mine
    },
    {
        path:'/cart',
        name:'cart',
        component:Cart
    },
    {
        path:'/login',
        name:'login',
        component:Login
    },
    {
        path:'/register',
        name:'register',
        component:Register
    },
    {
        path:'/myorder',
        name:'myorder',
        component:MyOrder
    },
    {
        path:'/address',
        name:'address',
        component:MyAddress
    },
    {
        path:'/myinfo',
        name:'myinfo',
        component:MyInfo
    },
    {
        path:'/changepassword',
        name:'changepassword',
        component:ChangePassword
    }
]

//创建路由实例，传入配置项
const router = new Router({
  mode:'history',//默认为hash
  routes
})
// 路由拦截
// 导航卫士（钩子函数）
// 操作导航卫士时，路由处于暂停状态
router.beforeEach((to, from, next) => {

    // 需要登录才允许进入路由
    if(to.meta.requiresAuth){
        // 判断是否登录
        if(sessionStorage.getItem('token')){
            next();
        }else{
            next({
                path:'/login'
            })
        }
    }else{
        // 调用next()方法，放行路由跳转
        next();
    }
  })
  
export default router
