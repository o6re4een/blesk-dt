<template>
  <div class="main-gallery">
    <img src="../assets/1.png" alt="" class="photo-gallery" />
    <img src="../assets/1.png" alt="" class="photo-gallery" />
    <img src="../assets/1.png" alt="" class="photo-gallery" />
    <img src="../assets/1.png" alt="" class="photo-gallery" />
    <img src="../assets/1.png" alt="" class="photo-gallery" />
  </div>
</template>

<style scoped>
.main-gallery {
  max-width: 100vw;
  overflow: hidden;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 10px;
  justify-items: center;
}

@media screen and (max-width: 1200px) {
  .main-gallery {
    grid-template-columns: repeat(2, 1fr);
  }
}
@media (max-width: 768px) {
  .photo-gallery {
    width: fit-content;
    height: 280px;
    border-radius: 20px;
    box-shadow: 2px 4px 8px var(--shadows-color);
  }
  .photo-gallery img {
    box-shadow: 2px 4px 8px var(--shadows-color);
  }
}

@media (max-width: 430px) {
  .photo-gallery {
    width: fit-content;
    height: 186px;
    border-radius: 20px;
    box-shadow: 2px 4px 8px var(--shadows-color);
  }
  .photo-gallery img {
    box-shadow: 2px 4px 8px var(--shadows-color);
  }
}
</style>
