<template>
  <div class="news">
    <ul>
      <li v-for="news in newslist" :key="news.id">
        <img :src="news.pic" />
        <div class="message">
          <span
            @mouseover="changecolor"
            style="cursor: pointer"
            @click="detail(news.id)"
          >
            {{ news.title }}
          </span>
          <br />
          <br />
          {{ news.time }}
        </div>
      </li>
    </ul>
  </div>
</template>

<script>
import { mapState } from "vuex";
import router from "@/router";
export default {
  name: "NewsIndex",
  data() {
    return {
      index: 0,
    };
  },
  created() {
    this.$store.dispatch("getNews");
  },
  methods: {
    changecolor: function (event) {
      const span = document.querySelectorAll("span");
      for (let i = 0; i < span.length; i++) {
        if (span[i].classList.contains("active") !== undefined) {
          span[i].classList.remove("active");
        }
      }
      event.target.classList.add("active");
    },
    detail: function (value) {
      this.$router.push({ name: "detail", params: { id: value } });
    },
  },
  computed: {
    ...mapState({ newslist: "newslist" }),
  },
};
</script>

<style scoped>
.active {
  color: orange;
}
.new {
  position: relative;
}
li {
  list-style: none;
  display: flex;
  align-items: center;
  height: 120px;
  border-bottom: dashed 1px grey;
  position: relative;
}
img {
  width: 120px;
  height: 70px;
  position: absolute;
  left: 100px;
  cursor: pointer;
}
.message {
  position: absolute;
  left: 300px;
}
</style>