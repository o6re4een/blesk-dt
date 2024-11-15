<template>
  <section href="#reviews" class="container section-col">
    <h2 class="subtitle">Отзывы</h2>
    <div class="rewiews-container">
      <ReviewComponent
        v-for="review in reviews"
        :key="review"
        :from="review.name"
        :text="review.message"
      ></ReviewComponent>
    </div>
  </section>
</template>

<script setup>
import ReviewComponent from "./ReviewComponent.vue";

const reviews = [
  {
    name: "Alexander",
    message:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quis magna at dolor elementum sagittis. Aenean ac lorem eu nunc posuere tristique. Duis eget mauris.",
  },
  {
    name: "Alexander",
    message:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quis magna at dolor elementum sagittis. Aenean ac lorem eu nunc posuere tristique. Duis eget mauris.",
  },
  {
    name: "Alexander",
    message:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quis magna at dolor elementum sagittis. Aenean ac lorem eu nunc posuere tristique. Duis eget mauris.",
  },
  {
    name: "Alexander",
    message:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quis magna at dolor elementum sagittis. Aenean ac lorem eu nunc posuere tristique. Duis eget mauris.",
  },
];
</script>

<style scoped>
.rewiews-container {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 20px;
}

@media screen and (max-width: 768px) {
  .rewiews-container {
    grid-template-columns: repeat(1, 1fr);
  }
}
</style>
