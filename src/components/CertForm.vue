<template>
  <div
    class="cert-form-contaner cert-form-layout callback-form__body-padding"
    :class="{ hidden: props.active == false, visible: props.active == true }"
  >
    <CertificateComponent
      :selectedValue="props.selectedValue"
    ></CertificateComponent>

    <form action="" class="callback-form">
      <div class="callback-form__body cert-callback-form__body">
        <div class="callback-form__item">
          <p class="callback-form__text">Имя получателя</p>
          <input type="text" class="inp callback-form__input" />
        </div>
        <div class="callback-form__item">
          <p class="callback-form__text">Ваш Телефон</p>
          <input type="text" class="inp callback-form__input" />
        </div>
        <!-- <div class="callback-form__item">
          <p class="callback-form__text">Машина</p>
          <input type="text" class="inp callback-form__input" />
        </div> -->

        <button class="btn callback-form__btn">Заказать</button>
      </div>
    </form>
  </div>
</template>

<script setup lang="ts">
import CertificateComponent from "./CertificateComponent.vue";
const props = defineProps({
  selectedValue: {
    type: Number,
    default: 10000,
  },
  active: {
    type: Boolean,
    default: false,
  },
});
const emit = defineEmits(["update:active"]);

const closePopup = () => {
  emit("update:active", false);
};
</script>

<style scoped>
.hidden {
  display: none;
}
.visible {
  display: flex;
}

/* .cert-form-backdrop {
  position: absolute;
  align-items: center;
  height: 100vh;
  width: 100vw;
  justify-content: center;
} */

.cert-form-contaner {
  position: absolute;
  /* display: flex; */
  flex-direction: row;
  align-items: center;
  height: fit-content;
  background-color: var(--grey-color);
  border-radius: 30px;
}

.cert-callback-form__body {
  width: 100%;
}

.cert-form-layout {
  max-width: 1115px;
  width: 100%;
  /* margin-left: auto;
  margin-right: auto; */
  gap: 30px;
}

.form {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: fit-content;
}

.callback-form__item {
  display: flex;
  align-items: center;
  flex-direction: column;
  gap: 10px;
}

.callback-form__input {
  width: 100%;
}
@media screen and (max-width: 1115px) {
  .cert-form-layout {
    max-width: 96vw;
    width: 96vw;
  }
}

@media screen and (max-width: 768px) {
  .cert-form-layout {
    max-width: 96vw;
    width: 100%;
  }
  .cert-form-contaner {
    flex-direction: column;
  }
}
@media screen and (max-width: 380px) {
  .callback-form__input {
    width: 80vw;
  }
  .callback-form__btn {
    width: 80vw;
  }
  .callback-form__body {
    padding: 20px 5px;
    max-width: 92vw;
  }
}
</style>
