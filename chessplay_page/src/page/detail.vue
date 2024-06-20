<template>
  <div class="detail">
    <h2 style="text-align: center; margin-bottom: 20px">
      {{ title }}
    </h2>
    <div v-html="content" class="content"></div>
  </div>
</template>

<script>
import { computed } from "vue";
import { mapState } from "vuex";
export default {
  name: "DetailPage",
  data() {
    return {
      title: "",
      content: "",
    };
  },
  mounted() {
    this.Newsdetail();
  },
  computed: {
    ...mapState({ newslist: "newslist" }),
  },
  methods: {
    Newsdetail() {
      console.log("ok");
      for (let i = 0; i < this.newslist.length; i++) {
        if (this.$route.params.id === this.newslist[i].id) {
          
          this.title = this.newslist[i].title;
          this.content = this.newslist[i].content;
        }
      }
    },
  },
};
</script>

<style scoped>
</style>