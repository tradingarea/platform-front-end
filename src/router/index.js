import Vue from 'vue'
import Router from 'vue-router'
import baseLayout from '@/layout/base.vue'
import homeIndex from '@/components/home/index'

Vue.use(Router)

export default new Router({
  routes: [{
    path: '/home',
    component: baseLayout,
    children: [
      {
        path: 'index',
        component: homeIndex
      }
    ]
  }]
})


