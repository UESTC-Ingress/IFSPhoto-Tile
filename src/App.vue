<template>
  <div>
    <div id="bg" />
    <div id="app">
      <stack
        :column-min-width="320"
        :gutter-width="15"
        :gutter-height="15"
        monitor-images-loaded
      >
        <stack-item class="img-container" v-for="(item, i) in items" :key="i">
          <img :src="'/assets/' + item" />
        </stack-item>
      </stack>
    </div>
  </div>
</template>

<script>
import { Stack, StackItem } from "vue-stack-grid";
import dt from "./data/data.json";
export default {
  name: "App",
  data: () => ({ items: dt }),
  components: { Stack, StackItem },
};
</script>

<style>
body {
  overflow-x: hidden;
}

#bg {
  position: absolute;
  overflow-x: hidden;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background-image: url("/img/bg.png");
  background-size: cover;
  filter: blur(7px);
  background-repeat: no-repeat;
}

#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
  margin: 0 auto;
}
.img-container {
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: center;
  overflow: hidden;
  margin: 0;
  object-fit: fill;
  cursor: pointer;
  filter: drop-shadow(5px 5px 2px rgba(0, 0, 0, 0.3));
}
.img-container img {
  display: block;
  margin: 0;
  width: 100%;
  height: auto;
  border-radius: 25px;
}
.img-container figcaption {
  margin: 3px 0;
  text-align: center;
}
</style>
