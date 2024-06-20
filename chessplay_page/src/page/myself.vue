<template>
  <div class="personal">
    
    <div v-if="user.identity === `admin`">
      <a href="" @click="admin">点击进入管理员界面</a>
    </div>
    <div class="detail_message">
      <div class="username" @click="change">
        <label for="">用户名：</label
        ><input type="text" v-model="user.username" disabled class="username" />
        <button>修改</button>
      </div>
      <br />
      <div
        class="password"
        @click="
          show_pass();
          change();
        "
      >
        <label for="">密码：</label>
        <input
          type="password"
          v-model="user.password"
          disabled
          class="password"
        />
        <button>显示</button>
        <button>修改</button>
      </div>
      <br />
      <div class="score">积分：{{ user.score }}</div>
      <br />
      <div class="identify">身份：{{ user.identity }}</div>
      <br />
      <div class="association">加入/管理协会：{{ user.association }}</div>
      <br />
      <div class="coin">金币：{{ user.coin }}</div>
      <button style="margin: 20px 150px; display: block" @click="save">
        保存
      </button>
    </div>
    <div class="bag">
      <h2>背包</h2>
      <ul>
        <li v-for="buy in buyer" :key="buy.id">
          {{ buy.name }}
          &nbsp; &nbsp;
          {{ buy.description }}
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import { request } from "@/api";
import { mapState } from "vuex";

export default {
  name: "PersonalPage",
  
  data() {
    return {
      show: false,
    };
  },
  created() {
    this.$store.dispatch("getUsers", this.user.username);
    this.$store.dispatch("getPurchase");
  },
  computed: {
    ...mapState({ user: "user", buyerlist: "buyerlist" }),
    buyer() {
      return this.buyerlist.filter((buyers) => buyers.user_id === this.user.id);
    },
  },
  methods: {
    admin() {
      this.$router.push("/admin");
    },
    //显示密码
    show_pass() {
      if (event.target.innerText !== "修改") {
        const input = event.currentTarget.childNodes[1];
        if (input.type === "password") {
          input.type = "text";
          const button = event.currentTarget.childNodes[2];
          button.textContent = "不显示";
        } else {
          input.type = "password";
          const button = event.currentTarget.childNodes[2];
          button.textContent = "显示";
        }
      }
    },
    //修改username或者密码
    change() {
      if (event.target.innerText === "修改") {
        const input = event.currentTarget.childNodes[1];
        input.disabled = false;
      }
    },
    save() {
      let res = request.updateUser({
        username: this.user.username,
        id: this.user.id,
        password: this.user.password,
      });
    },
  },
};
</script>

<style scoped>
a {
  text-decoration: none;
  color: black;
}
button {
  height: 28px;
  width: 60px;
  margin-left: 10px;
  cursor: pointer;
}
.detail_message {
  margin-left: 300px;
  display: flex;
  flex-direction: column;
  margin-top: 50px;
}

input {
  height: 25px;
  outline: none;
}

.bag {
  margin-top: 20px;
}

li {
  text-align: center;
  list-style: none;
  margin-top: 10px;
}

h2 {
  text-align: center;
}
</style>