<template>
  <div class="section-col form" id="services">
    <div>
      <h2 class="subtitle">Нам доверяют клиенты</h2>
      <h3 class="secondary__subtitle">Заполните данные для записи</h3>
    </div>

    <form action="" class="callback-form">
      <div class="callback-form__body callback-form__body-padding">
        <div class="callback-form__item">
          <p class="callback-form__text">Ваше имя</p>
          <input type="text" class="inp callback-form__input" />
        </div>
        <div class="callback-form__item">
          <p class="callback-form__text">Телефон</p>
          <input type="text" class="inp callback-form__input" />
        </div>
        <div class="callback-form__item">
          <p class="callback-form__text">Машина</p>
          <input type="text" class="inp callback-form__input" />
        </div>

        <button class="btn callback-form__btn">Записаться</button>
      </div>
    </form>
  </div>
</template>

<style scoped>
.form {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.callback-form__item {
  display: flex;
  align-items: center;
  flex-direction: column;
  gap: 10px;
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
