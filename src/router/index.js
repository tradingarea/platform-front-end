import Vue from 'vue'
import Router from 'vue-router'
import baseLayout from '@/layout/base.vue'

// business 相关
import businessIndex from '@/components/business/index'
import detailIndex from '@/components/business/detail'

import chatIndex from '@/components/chat/index'
import productIndex from '@/components/product/index'
import centerIndex from '@/components/center/index'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      component: baseLayout,
      redirect: '/business/index'
    },
    {
      path: '/business',
      component: baseLayout,
      children: [
        {
          path: 'index',
          component: businessIndex
        },
        {
          path: 'detail',
          component: detailIndex
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


