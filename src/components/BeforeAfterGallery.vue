<template>
    <div class="container body-ba-gallery">
       <div class="body-ba-gallery__txt">
            <h2 class="subtitle body-ba-gallery__subtitle">Галерея</h2>
            <h3 class="secondary__subtitle body-ba-gallery_secondary-subtitle">Потяните за стрелочки, чтобы увидеть результат</h3>
        </div>
        <div class="gallery">
            <BeforeAfterSlider
                v-for="(slide, index) in slides"
                :key="index"
                :before="slide.before"
                :after="slide.after"
            />
        </div> 
    </div>
</template>

<script setup>
import BeforeAfterSlider from './BeforeAfterSlider.vue';

const slides = [
    {
        before: new URL('../assets/before-after/before1.png', import.meta.url).href,
        after: new URL('../assets/before-after/after1.png', import.meta.url).href,
    },
    {
        before: new URL('../assets/before-after/before2.png', import.meta.url).href,
        after: new URL('../assets/before-after/after2.png', import.meta.url).href,
    },
    {
        before: new URL('../assets/before-after/before3.png', import.meta.url).href,
        after: new URL('../assets/before-after/after3.png', import.meta.url).href,
    },
    {
        before: new URL('../assets/before-after/before4.png', import.meta.url).href,
        after: new URL('../assets/before-after/after4.png', import.meta.url).href,
    },
    {
        before: new URL('../assets/before-after/before5.png', import.meta.url).href,
        after: new URL('../assets/before-after/after5.png', import.meta.url).href,
    },
    {
        before: new URL('../assets/before-after/before6.png', import.meta.url).href,
        after: new URL('../assets/before-after/after6.png', import.meta.url).href,
    },

    // Добавьте больше изображений по необходимости
];
</script>

<style scoped>



.gallery {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 20px;
}

.body-ba-gallery_secondary-subtitle {
    font-size: 2rem;
    margin: 0;
    margin-bottom: 7.5rem;
}

.body-ba-gallery__subtitle {
    margin-bottom: 5.6875rem;
}

@media screen and (max-width: 992px) { 
    .body-ba-gallery_secondary-subtitle {
        font-size: 1.8rem;
    }

}

@media screen and (max-width: 768px) { 
    .body-ba-gallery_secondary-subtitle {
        font-size: 1.6rem;
    }

}



@media screen and (max-width: 576px) { 
    .body-ba-gallery_secondary-subtitle {
        font-size: 1.4rem;
    }

}

@media screen and (max-width: 320px) { 
    .body-ba-gallery_secondary-subtitle {
        font-size: 1.2rem;
    }
}


</style>