import Vue from 'vue'
import App from './App.vue'
import Router from './router'

// muse-ui
import MuseUI from 'muse-ui';
import 'muse-ui/dist/muse-ui.css';
Vue.use(MuseUI);

// axios
import axios from 'axios'
import VueAxios from 'vue-axios'
Vue.use(VueAxios, axios)

Vue.config.productionTip = false

new Vue({
  router: Router,
  render: h => h(App),
}).$mount('#app')
