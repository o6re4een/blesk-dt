<script setup>
import HeaderComponent from "./components/HeaderComponent.vue";
import ResultComponent from "./components/ResultComponent.vue";
import ContactForm from "./components/ContactForm.vue";
import GiftCertificate from "./components/GiftCertificate.vue";
import AboutUs from "./components/AboutUs.vue";
import BeforeAfterGallery from "./components/BeforeAfterGallery.vue";
import Reviews from "./components/Reviews.vue";
</script>

<template>
  <div class="page-container">
    <HeaderComponent></HeaderComponent>
    <div class="container page-container">
      <ResultComponent></ResultComponent>
      <!-- <BeforeAfterGallery /> -->
      <ContactForm></ContactForm>
      <!-- <GiftCertificate></GiftCertificate> -->
      <!-- <AboutUs></AboutUs> -->

      <Reviews></Reviews>
    </div>
  </div>
</template>

<style scoped></style>
