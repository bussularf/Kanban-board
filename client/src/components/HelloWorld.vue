<template>
  <div>
    <h1>Kanban Board</h1>
    <ul>
      <li v-for="user in users" :key="user.id">{{ user.email }}</li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      users: [],
    };
  },
  mounted() {
    this.fetchUsers();
  },
  methods: {
    fetchUsers() {
      // Substitua a URL com o caminho para o endpoint do Rails que retorna os usuários
      fetch('http://localhost:3000/users') // Certifique-se de ajustar a porta se necessário
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

<style scoped>
/* Estilos específicos do componente HelloWorld.vue */
</style>
