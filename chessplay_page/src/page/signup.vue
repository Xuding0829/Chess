<template>
  <div class="signup">
    <div class="username">
      <label for="">用户名：</label>
      <input type="text" name="" id="1" v-model="username" />
    </div>
    <div class="password">
      <label for="">密码：</label>
      <input type="password" name="" id="2" v-model="password" />
    </div>
    <div :style="{ opacity: show }" class="exist">该用户名已存在！</div>
    <!-- <div class="confirm">
      <label for="">确认密码：</label>
      <input type="password" name="" id="3" />
    </div> -->
    <button @click="registor">注册</button>
    <div class="agree">
      <input type="checkbox" id="choose" />
      <label for="">已阅读并同意以下协议</label>
    </div>
  </div>
</template>

<script>
import { request } from "@/api";
export default {
  name: "SignUp",
  data() {
    return {
      username: "",
      password: "",
      show: 0,
    };
  },
  methods: {
    registor() {
      request
        .registor({ username: this.username, password: this.password })
        .then((value) => {
          this.show = value.data.code;
          if (this.show !== 1) this.$router.replace("/home");
        });
    },
  },
};
</script>

<style scoped>
.exist {
  text-align: center;
  margin-top: 20px;
  color: red;
}
.signup {
  position: relative;
  margin-top: 40px;
}
.username,
.password,
.confirm {
  input {
    border: solid 1px black;
    width: 250px;
    height: 35px;
    padding-left: 10px;
    outline: none;
    margin-left: 350px;
    margin-top: 30px;
  }
  label {
    margin-top: 30px;
    position: absolute;
    left: 270px;
    margin-top: 35px;
  }
}
tr {
  display: block;
  margin-top: 30px;
}
button {
  margin-top: 20px;
  display: block;
  width: 342px;
  height: 40px;
  background-color: orange;
  cursor: pointer;
  border: none;
  margin-left: 270px;
}
#choose {
  margin-right: 10px;
}
.agree {
  margin-top: 20px;
  display: flex;
  justify-content: center;
}
</style>