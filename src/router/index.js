import Vue from 'vue'
import Router from 'vue-router'
import baseLayout from '@/layout/base.vue'
import homeIndex from '@/components/home/index'
import chatIndex from '@/components/chat/index'
import productIndex from '@/components/product/index'
import centerIndex from '@/components/center/index'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      component: baseLayout,
      redirect: '/home/index'
    },
    {
      path: '/home',
      component: baseLayout,
      children: [
        {
          path: 'index',
          component: homeIndex
        }
      ]
    },
    {
      path: '/chat',
      component: baseLayout,
      children: [
        {
          path: 'index',
          component: chatIndex
        }
      ]
    },
    {
      path: '/product',
      component: baseLayout,
      children: [
        {
          path: 'index',
          component: productIndex
        }
      ]
    },
    {
      path: '/center',
      component: baseLayout,
      children: [
        {
          path: 'index',
          component: centerIndex
        }
      ]
    }
  ]
})


