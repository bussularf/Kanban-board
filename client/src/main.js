import { createApp } from 'vue';
import App from './App.vue';
import axios from 'axios';
import NavBar from './components/NavBar.vue';

const app = createApp(App);

app.component('nav-bar', NavBar);

app.config.globalProperties.$axios = axios;

app.mount('#app');
