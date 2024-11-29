<template>
  <div class="burger-menu">
    <div class="burger-links">
      <a class="subtitle" href="#services">Услуги</a>
      <a class="subtitle" href="#result">Наши работы</a>
      <a class="subtitle" href="#contacts">Контакты</a>
      <a class="subtitle" href="#reviews">Отзывы</a>
      <a class="subtitle" href="#about-us">О Нас</a>
    </div>
  </div>
</template>

<script setup></script>

<style scoped>
.burger-menu {
  background-color: #000000;
  z-index: 10;
  position: absolute;
  top: 60px;
  right: 10px;

  border-radius: 20px 0px 20px 20px;
}
.burger-links {
  cursor: pointer;
  z-index: 11;
  display: flex;
  flex-direction: column;
  gap: 15px;
  padding: 15px;
}
</style>
