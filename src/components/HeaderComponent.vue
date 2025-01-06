<template>
  <header class="header">
    <div class="container header__container header__container-padding">
      <img
        src="../assets/logo.svg"
        alt="BleskDetailing"
        class="logo header__logo"
      />
      <nav class="menu header__menu">
        <ul class="menu__list header__menu-list">
          <li class="menu__item">
            <a href="#services" class="menu__link">Услуги</a>
          </li>
          <li class="menu__item">
            <a href="#contacts" class="menu__link">Контакты</a>
          </li>
          <li class="menu__item">
            <a href="#result" class="menu__link">Наши работы</a>
          </li>
          <li class="menu__item">
            <a href="#reviews" class="menu__link">Отзывы</a>
          </li>
          <li class="menu__item">
            <a href="#about-us" class="menu__link">О нас</a>
          </li>
        </ul>
        <div @click="menuActive = !menuActive">
          <img src="../assets/Menu.png" alt="" class="menu-icon" />
        </div>
      </nav>
      <transition name="burger-menu-animation" mode="out-in">
        <BurgerMenu v-if="menuActive" />
      </transition>
    </div>
  </header>
  <div class="welkom-block">
    <div class="container welkom-block__container">
      <p class="welkom-block__text-detaling">ДЕТЕЙЛИНГ - ЦЕНТР</p>
      <h1 class="ttl welkom-block__ttl">BLESK DETAILING</h1>
      <p class="welkom-block__text">
        Приветствуем вас в детейлинг-центре, где автомобиль – это не просто
        инструмент для перевозки, а отражение индивидуальности его владельца.
      </p>
    </div>
    <a href="#result" class="arrow welkom-block__arrow">
      <img src="../assets/arrow.png" alt="Стрелка" href="#result" />
    </a>
  </div>
</template>

<script setup>
import { ref } from "vue";
import BurgerMenu from "./BurgerMenu.vue";
// Пример управления состоянием меню
const menuActive = ref(false);
</script>

<style scoped>
/* Базовые стили для Transition */
.burger-menu-animation-enter-from,
.burger-menu-animation-leave-to {
  transform: scale(0);
  opacity: 0;
  transform-origin: top right; /* Начало трансформации — правый верхний угол */
}

.burger-menu-animation-enter-to,
.burger-menu-animation-leave-from {
  transform: scale(1);
  opacity: 1;
  transform-origin: top right;
}

.burger-menu-animation-enter-active,
.burger-menu-animation-leave-active {
  transition: transform 0.5s ease, opacity 0.5s ease;
}
</style>
