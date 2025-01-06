<template>
  <div class="main-gallery">
    <img
      v-for="index in showCount"
      :key="index"
      :src="getPath(String(index).padStart(2, '0'))"
      alt=""
      class="photo-gallery"
    />

    <!-- <img src="../assets/results/01.webp" alt="" class="photo-gallery" /> -->
    <!-- <img src="../assets/1.png" alt="" class="photo-gallery" />
    <img src="../assets/1.png" alt="" class="photo-gallery" />
    <img src="../assets/1.png" alt="" class="photo-gallery" />
    <img src="../assets/1.png" alt="" class="photo-gallery" /> -->
  </div>
</template>

<script setup>
import { computed } from "vue";
const getPath = (fileIndex) => {
  return new URL(`../assets/results/${fileIndex}.webp`, import.meta.url).href;
};

const props = defineProps({
  showCount: {
    type: Number,
    default: 6,
  },
});
</script>

<style scoped>
.main-gallery {
  max-width: 100vw;
  overflow: hidden;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  /* grid-template-rows: 2fr 1fr 2fr; */
  gap: 10px;
  row-gap: 40px;
  justify-items: center;
}

@media screen and (max-width: 1024px) {
  .main-gallery {
    grid-template-columns: repeat(2, 1fr);
  }
}
@media (max-width: 768px) {
  .photo-gallery {
    width: fit-content;
    height: 280px;
    border-radius: 20px;
    box-shadow: 2px 4px 8px var(--shadows-color);
  }
  .photo-gallery img {
    box-shadow: 2px 4px 8px var(--shadows-color);
  }
}

@media (max-width: 576px) {
  .main-gallery {
    grid-template-columns: repeat(1, 1fr);
  }
  .photo-gallery {
    width: fit-content;
    height: 220px;
    border-radius: 20px;
    box-shadow: 2px 4px 8px var(--shadows-color);
  }
  .photo-gallery img {
    box-shadow: 2px 4px 8px var(--shadows-color);
  }
}
</style>
