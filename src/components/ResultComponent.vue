<template>
  <section class="section-col top-margin" id="result">
    <h2 class="subtitle">Наши результаты</h2>
    <Gallery :showCount="showCount"></Gallery>
    <button
      class="btn gallery_btn"
      :style="{ display: hasMore ? 'flex' : 'none' }"
      @click="increaseCount"
    >
      Показать еще
    </button>
  </section>
</template>

<script setup>
import Gallery from "./Gallery.vue";
import { ref } from "vue";

const showCount = ref(6);
const hasMore = ref(true);

function increaseCount() {
  if (showCount.value < 18) {
    hasMore.value = true;
    showCount.value += 6;
    if (showCount.value >= 18) {
      hasMore.value = false;
    }
  }
}
</script>

<style scoped>
.result {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.gallery_btn {
  max-width: fit-content;
  align-self: center;
}

.top-margin {
  margin-top: 100px;
}
</style>
