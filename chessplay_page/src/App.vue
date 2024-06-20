<template>
  <div id="app">
    <header-vue></header-vue>
    <router-view class="show"></router-view>
  </div>
</template>

<script>
import HeaderVue from "./components/Header.vue";
export default {
  name: "App",
  components: {
    HeaderVue,
  },
};
</script>
<style>
#app {
  position: relative;
}
.show {
  margin: 0 auto;
  width: 900px;
}
</style>
