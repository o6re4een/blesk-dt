<template>
  <div class="gift-sert">
    <h2 class="subtitle">Подарочные сертификаты</h2>
    <div class="gift-sert__body">
      <p class="gift-sert__info">
        Порадуйте своих близких качественным уходом за автомобилем с нашей
        подарочной картой на услуги детейлинга. Это отличный способ подарить
        заботу о машине – будь то профессиональная химчистка, полировка кузова
        или комплексная мойка.
      </p>
      <div class="sert-nominal__txt">Выберите номинал</div>
      <div class="gift-sert__block">
        <CertificateComponent class=""></CertificateComponent>
        <div class="gift-sert__nominal">
          <div class="grid-nominal">
            <div class="nominal">20 000р</div>
            <div class="nominal">15 000р</div>
            <div class="nominal">10 000р</div>
            <div class="nominal">5 000р</div>
          </div>
          <div class="nominal grid-footer">2 000р</div>
        </div>
      </div>
    </div>
    <button class="btn btn__gift-sert">Оформить</button>
  </div>
</template>

<script setup>
import CertificateComponent from "./CertificateComponent.vue";
</script>

<style scoped>
.gift-sert {
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
}

.gift-sert__block {
  display: flex;
  justify-content: space-around;
  width: 100%;
}

.sert-nominal__txt {
  color: white;
  font-size: 3rem;
  text-align: center;
  margin-bottom: 2rem;
  margin-top: 2rem;
}

.gift-sert__info {
  color: var(--shadows-color);
  font-size: 2rem;
  text-align: center;
  margin-top: 3.5rem;
}

.gift-sert__nominal {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  /* min-width: 92vw; */
  gap: 3rem;
}

.nominal {
  font-size: 2.5rem;
  color: white;
  grid-area: "content";
}

.grid-nominal {
  display: grid;
  grid-template-rows: 2fr 2fr;
  grid-template-columns: repeat(2, 1fr);
  gap: 3rem;
}

.grid-footer {
  text-align: center;
  gap: 3rem;
}

.btn__gift-sert {
  margin-top: 6.5625rem;
  text-align: center;
  outline: none;
}

@media screen and (max-width: 1024px) {
  .gift-sert__block {
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 40px;
  }
}
@media screen and (max-width: 768px) {
  .gift-sert__nominal {
    margin-top: 3rem;
  }
}
@media screen and (max-width: 576px) {
  .certificate {
    max-width: 92vw;
  }
}

@media screen and (max-width: 480px) {
  .grid-nominal {
    grid-template-columns: auto;
    grid-template-rows: repeat(4, auto);
    width: 100%;
    max-width: 92vw;
  }
  .nominal {
    max-width: 92vw;
  }
}

@media screen and (max-width: 340px) {
  .sert-nominal__txt {
    font-size: 2rem;
  }
  .gift-sert__info {
    font-size: 1.2rem;
    text-align: center;
    width: 92vw;
  }
}
</style>
