<template>
  <div id="app">
    <h1>{{ mensagem }}</h1>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      mensagem: 'Bem-vindo ao meu site!',
    };
  },
  created() {
    // Adicione sua lógica aqui para verificar se o site foi acessado
    // e atualize a mensagem conforme necessário.
    // Neste exemplo, sempre mostramos a mensagem ao acessar o site.

    // Se você deseja verificar se a mensagem deve ser mostrada apenas uma vez,
    // você pode usar localStorage ou cookies para armazenar um indicador.

    // Aqui estamos mostrando a mensagem sempre que o componente é criado.
    console.log('O site foi acessado!');
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
