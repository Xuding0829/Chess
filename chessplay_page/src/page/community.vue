<template>
  <div class="community">
    <div class="output">
      <textarea
        name=""
        id=""
        cols="30"
        rows="10"
        class="text"
        @keyup.enter="submit"
        v-model="value"
        placeholder="输入发表评论"
      ></textarea>
      <button @click="submit" class="submit">发送</button>
    </div>
    <ul class="comment">
      <li
        v-for="comment in commentlist"
        :key="comment.id"
        class="comment-detail"
      >
        {{ comment.content }}
        <div class="content">
          <div class="user">{{ comment.username }}</div>
          <div class="time">{{ comment.time }}</div>
        </div>
      </li>
    </ul>
  </div>
</template>

<script>
import { request } from "@/api";
import { mapState } from "vuex";
export default {
  name: "CommunityPage",
  data() {
    return {
      value: "",
    };
  },
  created() {
    this.$store.dispatch("getComments");
  },
  computed: {
    ...mapState({ commentlist: "commentlist", user: "user" }),
  },
  methods: {
    submit() {
      if (this.$store.state.login_state !== 0)
        alert("您还未登录，无法发布评论");
      else {
        const u = document.querySelector(".comment");
        const l = document.createElement("li");
        l.innerHTML = this.value;
        l.classList.add("comment-detail");
        u.appendChild(l);
        const div = document.createElement("div");
        div.classList.add("content");
        const div_time = document.createElement("div");
        const n = new Date(Date.now());
        const time =
          n.toLocaleDateString().replace(/\//g, "-") +
          " " +
          n.toTimeString().substr(0, 8);

        div_time.innerHTML = time;
        div_time.classList.add("time");

        //user
        const div_user = document.createElement("div");
        div_user.innerHTML = this.user.username;
        div_user.classList.add("user");
        div.appendChild(div_user);
        div.appendChild(div_time);
        l.appendChild(div);

        request
          .sendComment({
            id: null,
            username: this.user.username,
            content: this.value,
            time: time,
          })
          .then(console.log(this.user.username, this.value, time));
        // console.log(this.value)
        this.value = "";
      }
    },
  },
};
</script>

<style>
.content {
  margin-top: 10px;
  display: flex;
  justify-content: space-between;
}
.comment {
  list-style: none;
}
.comment .comment-detail {
  font-size: 16px;
  color: grey;
  margin: 10px 198px 10px 80px;
  word-wrap: break-word;
  border-bottom: solid 1px lightgrey;
}
.output {
  position: relative;
}
.text {
  display: inline-block;
  width: 600px;
  padding: 5px 10px;
  height: 80px;
  outline: none;
  resize: none;
  margin-top: 20px;
  margin-left: 80px;
  font-size: 16px;
}

.submit {
  width: 80px;
  height: 30px;
  position: absolute;
  top: 72px;
  right: 80px;
  background-color: orange;
  color: white;
  border: none;
  cursor: pointer;
  border-radius: 7%;
}
</style>