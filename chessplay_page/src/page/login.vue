<template>
  <div class="login">
    <h2>欢迎登录</h2>
    <div class="login-box">
      <div class="username">
        <span>账号：</span>
        <input
          type="text"
          name=""
          id=""
          placeholder="请输入用户名"
          v-model="username"
        />
      </div>
      <div class="passwords">
        <span>密码：</span>
        <input type="password" placeholder="请输入密码" v-model="password" />
      </div>
    </div>
    <div class="warning" :style="{ opacity: show }">账号或密码错误！</div>
    <div class="btn">
      <button @click="login">登录</button>
      <button @click="sign_up">注册</button>
    </div>
  </div>
</template>

<script>
import store from "@/store";
import { request } from "../api/index";
export default {
  name: "LoginPage",
  data() {
    return {
      username: "",
      password: "",
      show: 0,
    };
  },
  methods: {
    sign_up() {
      this.$router.replace({ path: "/signup" });
    },
    login() {
      let res;
      res = request.login({ username: this.username, password: this.password });
      res.then((value) => {
        this.show = value.data.code;
        if (this.show === 0) {
          this.$router.replace({ path: "/news" });
          sessionStorage.setItem("token", JSON.stringify(value.data.data));
          this.$store.state.login_state = 0;
          this.$store.state.jwt = value.data.data;
          let token = this.$store.state.jwt; //在请求头中获取token
          let strings = token.split("."); //截取token，获取载体
          let userinfo = JSON.parse(
            decodeURIComponent(
              escape(
                window.atob(strings[1].replace(/-/g, "+").replace(/_/g, "/"))
              )
            )
          );
          store.commit("getUsers", userinfo);
          sessionStorage.setItem("store", JSON.stringify(this.$store.state));
        } else {
          this.$store.state.login_state = 1;
        }
      });
    },
  },
};
</script>

<style scoped>
.warning {
  color: red;
  margin-left: 100px;
  margin-top: 10px;
}
.login {
  width: 500px;
  height: 300px;
  border: solid 1px black;
  padding-top: 30px;
  position: absolute;
  right: 100px;
  top: 200px;
  border-radius: 3%;
}
h2 {
  text-align: center;
}
.passwords,
.username {
  text-align: center;
  margin-top: 30px;
  input {
    width: 300px;
    height: 40px;
    padding-left: 10px;
    outline: none;
  }
}
button {
  width: 100px;
  height: 40px;
  background-color: orange;
  border: none;
  border-radius: 3%;
  cursor: pointer;
}
.btn {
  padding: 0 70px 0 120px;
  display: flex;
  justify-content: space-between;
  margin-top: 10px;
}
</style>