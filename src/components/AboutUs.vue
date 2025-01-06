<template>
  <div class="about-us" id="about-us">
    <h2 class="subtitle about-us__title">О компании</h2>
    <p class="about-us__txt txt">
      Мы – команда профессионалов, увлечённых идеей сделать ваш автомобиль
      безупречно чистым и защищённым.
    </p>
    <h2 class="subtitle about-us__subtitle">Почему выбирают нас:</h2>
    <ul class="about-us__list">
      <li class="about-us__item txt">Опыт и мастерство.</li>
      <li class="about-us__item txt">Высокое качество услуг.</li>
      <li class="about-us__item txt">Индивидуальный подход.</li>
      <li class="about-us__item txt">Комплексный уход.</li>
      <li class="about-us__item txt">Гарантия удовлетворенности.</li>
    </ul>
    <h2 class="subtitle about-us__map">Мы на карте</h2>
    <div class="map-container">
      <div class="map">
        <iframe class="map" src="https://yandex.ru/map-widget/v1/?um=constructor%3A0e313de11bf0129e0f998908f82783edde2be3a4a3ea7502a8a4507e9ca69fd9&amp;source=constructor" frameborder="0"></iframe>
      </div>
    </div>
  </div>
</template>

<script setup></script>

<style scoped>

.about-us__subtitle {
    padding-bottom: 20px;
}
.about-us__txt {
  color: var(--shadows-color);
  font-size: 2rem;
  text-align: center;
  padding: 60px 0px;
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

.about-us__map {
    padding: 30px;
}

.map {
  background-color: var(--shadows-color);
  max-width: 1000px;
  width: 100%;
  height: 22.6875rem;
  border-radius: 20px;

}


@media screen and (max-width: 1024px) {
  .txt {
    font-size: 1.77rem;
  }
}
@media screen and (max-width: 768px) {
  .txt {
    font-size: 1.57rem;
  }
}
@media screen and (max-width: 576px) {
  .txt {
    font-size: 1.4rem;
  }
}

@media screen and (max-width: 340px) {
  .txt {
    font-size: 0.82rem;
  }
}
</style>
