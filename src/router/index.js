import Vue from 'vue'
import Router from 'vue-router'
Vue.use(Router)


//路由表, 设置路由切换的规则
let routes = [
  {
      path: '/',// 当浏览器的地址为 /
        redirect:{name:'home'}
  },
  {
      path: '/not-found',
      name : 'not-found',
      component: NotFound
  }, 
  {
      path: '**',
      redirect: {name: 'not-found'}
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
