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
        <CertificateComponent
          class=""
          :selectedValue="selectedValue"
        ></CertificateComponent>
        <div class="gift-sert__nominal">
          <div class="grid-nominal">
            <div
              v-for="value in values"
              :key="value"
              class="nominal"
              :class="{ active: selectedValue === value }"
              @click="handleClick"
              :data-value="value"
            >
              {{ value.toLocaleString("ru-RU") }}р
            </div>
          </div>
          <div
            class="nominal grid-footer"
            @click="handleClick"
            data-value="2000"
          >
            2 000р
          </div>
        </div>
      </div>
    </div>
    <button class="btn btn__gift-sert" @click="popUpActive = !popUpActive">
      Оформить
    </button>
    <CertForm :selected-value="selectedValue" :active="popUpActive"></CertForm>
  </div>
</template>

<script setup lang="ts">
import { Ref, ref } from "vue";
import CertificateComponent from "./CertificateComponent.vue";
import CertForm from "./CertForm.vue";

const popUpActive = ref(false);
const values: number[] = [20000, 15000, 10000, 5000];
const selectedValue: Ref<number> = ref(10000);

const handleClick = (e: any) => {
  selectedValue.value = Number(e?.target?.getAttribute("data-value"));
};
</script>

<style scoped>
.gift-sert {
  position: relative;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
}

.gift-sert__block {
  display: flex;
  justify-content: space-around;
  align-items: center;
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
  .nominal {
    font-size: 2.2rem;
  }
}
@media screen and (max-width: 768px) {
  .gift-sert__nominal {
    margin-top: 3rem;
  }
  .nominal {
    font-size: 2rem;
  }
}
@media screen and (max-width: 576px) {
  .certificate {
    max-width: 92vw;
  }
  .nominal {
    font-size: 1.8rem;
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
    font-size: 1.6rem;
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
  .nominal {
    font-size: 1.4rem;
  }
}
</style>
