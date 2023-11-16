<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    <HelloWorld :users="users" />
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue';

export default {
  name: 'App',
  components: {
    HelloWorld,
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
</style>
