<template>
  <div id="app">
    <nav-bar></nav-bar>
    <div class="app" >
      <img alt="Vue logo" src="./assets/logo.png">
      <HelloWorld :users="users" />
    </div>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue';
import NavBar from './components/NavBar.vue';

export default {
  name: 'App',
  components: {
    HelloWorld,
    'nav-bar': NavBar,
  },
  data() {
    return {
      users: [],
    };
  },
  mounted() {
    // Faz a solicitação AJAX para obter os usuários do servidor Rails
    this.fetchUsers();
  },
  methods: {
    fetchUsers() {
      // Substitua a URL com o caminho para o endpoint do Rails que retorna os usuários
      fetch('http://localhost:8080/users') // Certifique-se de ajustar a porta se necessário
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
}
</style>
