<template>
  <div class="about-us">
    <h2 class="subtitle about-us__title">О компании</h2>
    <p class="about-us__txt">
      Мы – команда профессионалов, увлечённых идеей сделать ваш автомобиль
      безупречно чистым и защищённым.
    </p>
    <h2 class="subtitle about-us__subtitle">Почему выбирают нас:</h2>
    <ul class="about-us__list">
      <li class="about-us__item">Опыт и мастерство.</li>
      <li class="about-us__item">Высокое качество услуг.</li>
      <li class="about-us__item">Индивидуальный подход.</li>
      <li class="about-us__item">Комплексный уход.</li>
      <li class="about-us__item">Гарантия удовлетворенности.</li>
    </ul>
    <h2 class="subtitle about-us__map">Мы на карте</h2>
    <div class="map-container">
      <div class="map"></div>
    </div>
  </div>
</template>

<script setup></script>

<style scoped>
.about-us__txt {
  color: var(--shadows-color);
  font-size: 2rem;
  text-align: center;
}

.about-us__subtitle {
  text-align: start;
}

.about-us__list {
  color: var(--shadows-color);
  font-size: 2rem;
  margin: 0;
}

.map-container {
  margin-top: 1.25rem;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
}

.map {
  background-color: var(--shadows-color);
  border: 5px solid var(--orange-color);
  width: 90vw;
  height: 22.6875rem;
  border-radius: 20px;
}
</style>
