<template>
  <div class="review review__bordered">
    <h1 class="review__name">{{ props.from }}</h1>
    <p class="review__text">{{ props.text }}</p>
  </div>
</template>

<script setup>
const props = defineProps({
  from: String,
  text: String,
});
</script>

<style scoped>
.review {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-items: center;
  gap: 10px;
  padding: 15px;
  max-width: 431px;
  max-height: 271px;
}

.review__bordered {
  border: 1px solid white;
  border-radius: 15px;
}

.review__name {
  color: white;
  border: 1px solid var(--orange-color);
  border-radius: 8.5px;
  padding: 10px 40px;
  font-size: 1.5rem;
  text-align: center;
}

.review__text {
  color: white;
  font-size: 1.25rem;
  text-align: center;
}

@media screen and (max-width: 380px) {
  .review {
    max-width: 90vw;
  }
}
</style>
