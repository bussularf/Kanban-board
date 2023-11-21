<!-- LoginForm.vue -->
<template>
  <div>
    <h2>Login</h2>
    <form @submit.prevent="login">
      <label>Email:</label>
      <input type="email" v-model="email" required>

      <label>Password:</label>
      <input type="password" v-model="password" required>

      <button type="submit">Login</button>
    </form>
  </div>
</template>

<script>
export default {
  data() {
    return {
      email: '',
      password: '',
    };
  },
  methods: {
    login() {
      // Enviar dados de login para o backend (usando Axios, por exemplo)
      this.$axios.post('/login', { email: this.email, password: this.password })
        .then(response => {
          // Lógica após login bem-sucedido, como redirecionar para outra página
          console.log(response.data);
        })
        .catch(error => {
          // Lógica para lidar com falha no login (exibição de mensagem de erro, etc.)
          console.error(error);
        });
    },
  },
};
</script>

<style scoped>
/* Estilos específicos para o componente LoginForm, se necessário */
</style>
