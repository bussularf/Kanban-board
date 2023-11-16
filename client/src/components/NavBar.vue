<!-- NavBar.vue -->
<template>
  <nav class="navbar">
    <div class="logo">Logo</div>
    <ul class="nav-links">
      <li><a href="#">Home</a></li>
      <li><a href="#">Sobre</a></li>
      <li><a href="#">Contato</a></li>
    </ul>
  </nav>
</template>

<script>
export default {
  // Lógica do componente vai aqui, se necessário
};
</script>

<style scoped>
/* Estilos específicos do componente NavBar.vue */
.navbar {
  background-color: #333;
  overflow: hidden;
}

.navbar .logo {
  float: left;
  padding: 15px;
  color: white;
  font-size: 20px;
}

.navbar .nav-links {
  float: right;
  list-style: none;
  margin: 0;
  padding: 0;
}

.navbar .nav-links li {
  display: inline-block;
}

.navbar .nav-links a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.navbar .nav-links a:hover {
  background-color: #ddd;
  color: black;
}
</style>
