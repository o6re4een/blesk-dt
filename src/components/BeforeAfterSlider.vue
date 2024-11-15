<template>
    <ImgComparisonSlider class="before-after">
        <img
            slot="first"
            style="width: 100%"
            :src="before"
        />
        <img
            slot="second"
            style="width: 100%"
            :src="after"
        />
    </ImgComparisonSlider>
</template>
  
<script>
import { ImgComparisonSlider } from '@img-comparison-slider/vue';
  
export default {
    name: 'ExampleComponent',
    components: {
    ImgComparisonSlider,
    },
    props: {
        before: {
            type: String,
            required: true,
        },
        after: {
            type: String,
            required: true,
        },
    },
};
</script>

<style type="text/css" scoped>
  img-comparison-slider {
    --divider-color: #ffffff;
    --default-handle-opacity: 0.3;
  }
  .before-after {
    margin: 10px;
    outline: none;
  }
</style>