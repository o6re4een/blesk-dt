<script setup>
import HeaderComponent from "./components/HeaderComponent.vue";
import ResultComponent from "./components/ResultComponent.vue";
import ContactForm from "./components/ContactForm.vue";
</script>

<template>
  <div class="page-container">
    <HeaderComponent></HeaderComponent>
    <div class="container page-container">
      <ResultComponent></ResultComponent>
      <ContactForm></ContactForm>
    </div>
  </div>
</template>

<style scoped></style>
