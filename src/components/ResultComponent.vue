<template>
  <section class="section-col" id="result">
    <h2 class="subtitle">Наши результаты</h2>
    <Gallery></Gallery>
  </section>
</template>

<script setup>
import Gallery from "./Gallery.vue";
</script>

<style scoped>
.result {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
</style>
