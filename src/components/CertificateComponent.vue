<template>
  <div class="certificate">
    <img
      src="../assets/logo.png"
      alt="BleskDetailing"
      class="logo certificate__logo"
    />
    <p class="certificate__txt">
      Сертификат {{ props.selectedValue.toLocaleString("ru-RU") }}р
    </p>
  </div>
</template>

<script setup>
const props = defineProps({
  selectedValue: {
    default: "10000",
    type: Number,
  },
});
</script>

<style scoped>
.certificate__logo {
  max-width: 443px;
  height: auto;
  padding-top: 40px;
}

@media screen and (max-width: 480px) {
  .certificate__logo {
    max-width: 90vw;
  }
}
</style>
