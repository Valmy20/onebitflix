import Vue from 'vue'
import App from './app.vue'
import Vuetify from 'vuetify'
import router from './routes.js';
import 'vuetify/dist/vuetify.min.css'
import 'slick-carousel/slick/slick.css';
import 'vue-dplayer/dist/vue-dplayer.css';
import store from './store';

Vue.use(Vuetify)

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    el: '#app',
    router,
    store,
    render: h => h(App)
  })
})