<template>
  <div id="app">
    <nav-bar></nav-bar>
    <div class="app" >
      <img alt="Vue logo" src="./assets/logo.png">
      <HelloWorld :users="users" />
      <login v-if="showLogin"></login>
    </div>
  </div>
</template>
<script>
import HelloWorld from './components/HelloWorld.vue';
import NavBar from './components/NavBar.vue';
import Login from './components/LoginForm.vue';

export default {
  name: 'App',
  components: {
    HelloWorld,
    'nav-bar': NavBar,
    'login': Login,
  },
  data() {
    return {
      users: [],
      showLogin: true,
    };
  },
  mounted() {
    this.fetchUsers();
  },
  methods: {
    fetchUsers() {
      fetch('http://localhost:8080/users')
        .then(response => response.json())
        .then(data => {
          this.users = data;
        })
        .catch(error => {
          console.error('Erro ao obter usuários:', error);
        });
    },
  },
};
</script>

<style>
img {
  height: 200px;
}

.app {
  display: flex;
  justify-content: space-between;
}
</style>
