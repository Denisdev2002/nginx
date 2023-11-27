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
  this.mensagem();
  },
  methods: {
    async getMensagem() {
      try {
        const response = await fetch('/api/get-message');
        const data = await response.json();
        this.mensagem = data.message;
      } catch (error) {
        console.error('Error fetching message:', error);
      }
    },
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
