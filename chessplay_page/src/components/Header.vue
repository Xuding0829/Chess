<template>
  <div class="head">
    <div class="title" @click="index">
      <img src="../assets/img/login.108b57f5.png" alt="" class="title" />
    </div>
    <div class="choose">
      <ul @click="change">
        <li @click="news">奕闻</li>
        <!-- 新闻 -->
        <li @click="community">奕坛</li>
        <!-- //论坛 -->
        <li @click="learning">奕学</li>
        <!-- //学习视频 -->
        <li @click="association">奕友</li>
        <!-- //交友房间 -->
        <li @click="play">奕技</li>
        <!-- //ai -->
        <li @click="shopping">奕店</li>
        <!-- //shopping -->
        <li @click="personal">奕客</li>
        <!-- //个人中心 -->
      </ul>
    </div>
    <div class="login" v-if="this.$store.state.login_state === 1">
      <button @click="sign_in">登录</button>
      <button @click="sign_up">注册</button>
    </div>
    <div v-else class="login">
      <div style="margin-right: 10px">{{ name }}</div>
      <img
        src="https://avatars.githubusercontent.com/u/127015490?v=4"
        alt=""
        width="32"
        height="32"
        style="padding-right: 10px"
      />
      <div @click="out" style="cursor: pointer; color: orange">退出登录</div>
    </div>
  </div>
</template>

<script>
import router from "@/router";
import state from "@/store/state";
import { mapState } from "vuex";
export default {
  name: "HeaderNav",
  computed: {
    ...mapState({ name: (state) => state.user.username }),
  },
  beforeCreate() {
    if (sessionStorage.getItem("store")) {
      this.$store.replaceState(
        Object.assign(
          {},
          this.$store.state,
          JSON.parse(sessionStorage.getItem("store"))
        )
      );
    }
    console.log(this.$store.state);
  },
  methods: {
    personal: function () {
      if (this.$store.state.login_state === 0) {
        this.$store.dispatch("getUsers", this.$store.state.user.username);
        this.$router.push("/personal");
      } else this.$router.push("/login");
    },
    out: function () {
      this.$store.state.login_state = 1;
      this.$router.push("/login");
      this.$store.state.user = null;
      localStorage.clear();
      sessionStorage.clear();
    },
    sign_up: function () {
      this.$router.push({ path: "/signup" });
    },
    learning: function () {
      this.$router.push({ path: "/learn" });
    },
    sign_in: function (event) {
      this.$router.push({ path: "/login" });
    },
    shopping: function () {
      if (this.$store.state.login_state === 0) {
        this.$router.push({ path: "/shopping" });
      } else this.$router.push({ path: "/login" });
    },
    news: function () {
      this.$router.push({ path: "/news" });
    },
    community: function () {
      this.$router.push({ path: "/community" });
    },
    association: function () {
      this.$router.push({ path: "/association" });
    },
    play: function () {
      if (this.$store.state.login_state === 0) {
        this.$store.dispatch("getUsers", this.$store.state.user.username);
        this.$router.push("/play");
      } else this.$router.push("/login");
    },
    change: function (event) {
      const ul = document.querySelector("ul");
      const child = ul.childNodes;
      for (let i = 0; i < child.length; i++) {
        if (child[i].classList.contains("active") !== undefined) {
          child[i].classList.remove("active");
        }
      }
      event.target.classList.add("active");
    },
    index: function () {
      this.$router.push({ path: "/login" });
      const ul = document.querySelector("ul");
      const child = ul.childNodes;
      for (let i = 0; i < child.length; i++) {
        if (child[i].classList.contains("active") !== undefined) {
          child[i].classList.remove("active");
        }
      }
    },
  },
};
</script>

<style scoped>
.login {
  display: flex;
  line-height: 32px;
}
.head {
  padding: 20px 0;
  display: flex;
  height: 80px;
  justify-content: space-around;
  border-bottom: solid 1px black;
  align-items: center;
}
.choose ul {
  display: flex;
  justify-content: space-around;
  width: 800px;
}
.choose ul li {
  margin-right: 10px;
  line-height: 35px;
  list-style: none;
  cursor: pointer;
  padding: 0 10px;
  width: 50px;
  height: 35px;
  text-align: center;
  border-radius: 8%;
}
.title {
  width: 160px;
  height: 80px;
  cursor: pointer;
}
button {
  width: 60px;
  height: 30px;
  cursor: pointer;
  margin-right: 10px;
}
.active {
  background-color: orange;
  color: white;
}
</style>