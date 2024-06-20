<template>
  <div class="association">
    <div class="create_my">
      <div style="margin-top: 25px">我的协会</div>
    </div>
    <div class="my_association">
      <div class="no_association" v-if="!user.association">
        <div class="line"></div>
        <div class="col"></div>
      </div>
      <div class="association" v-if="user.association">
        <div class="room_detail">
          协会名：{{ user.association }}
          <br />
          管理员：{{ admin }}
          <br />
          人数：{{ num }}
        </div>
      </div>
    </div>
    <div style="margin-bottom: 10px; margin-top: 40px">所有协会</div>
    <ul>
      <li
        v-for="room in roomlist"
        :key="room.id"
        class="room"
        @click="join(room.id)"
      >
        <div class="room_detail">
          协会名：{{ room.name }}
          <br />
          管理员：{{ room.admin }}
          <br />
          人数：{{ room.num }}
        </div>
        <button class="join" v-if="user.association !== room.name && user.username !== admin">
          加入该协会
        </button>
      </li>
    </ul>
  </div>
</template>

<script>
import { request } from "@/api";
import { mapState } from "vuex";
import loginVue from "./login.vue";
export default {
  name: "AssociationIndex",
  data() {
    return {
      admin: "",
      score: 0,
      num: 0,
    };
  },
  computed: {
    ...mapState({ roomlist: "roomlist", user: "user" }),
  },
  created() {
    this.$store.dispatch("getRooms");
    this.$store.dispatch("getUsers", this.user.username);
    console.log(this.user);
    for (let i = 0; i < this.roomlist.length; i++) {
      if (this.user.association === this.roomlist[i].name) {
        console.log(this.roomlist[i].admin);
        this.admin = this.roomlist[i].admin;
        this.num = this.roomlist[i].num;
        this.score = this.roomlist[i].sum_score;
      }
    }
  },
  methods: {
    join(value) {
      for (let i = 0; i < this.roomlist.length; i++) {
        if (this.roomlist[i].id === value) {
          if (this.roomlist[i].num < 30) {
            this.roomlist[i].num++;
            request
              .joinAssociation({
                association: this.roomlist[i].name,
                username: this.user.username,
              })
              .then(
                this.$store.dispatch("getUsers", this.user.username),
                (this.admin = this.roomlist[i].admin),
                (this.num = this.roomlist[i].num),
                (this.score = this.roomlist[i].sum_score)
              );
            break;
          } else alert("人数超过三十");
        }
      }
    },
  },
};
</script>

<style scoped>
.line {
  position: absolute;
  top: 50%;
  left: 25%;
  width: 50%;
  height: 100%;
  border-top: solid 2px grey;
  cursor: pointer;
}
.col {
  position: absolute;
  width: 100%;
  height: 70%;
  border-left: solid 2px grey;
  left: 50%;
  top: 15%;
  cursor: pointer;
}
.my_association {
  height: 120px;
  width: 200px;
}
.no_association {
  border: dashed 1px grey;
  border-radius: 5%;
  height: 120px;
  width: 200px;
  color: lightgray;
  position: relative;
}
.create_my {
  display: flex;
  justify-content: space-between;
}
.create {
  width: 100px;
  height: 40px;
  background-color: grey;
  border-radius: 5%;
  margin-top: 15px;
  border: none;
  cursor: pointer;
}
ul {
  display: flex;
  justify-content: left;
  flex-wrap: wrap;
}
ul li {
  margin-right: 20px;
}
.room {
  height: 180px;
  width: 200px;
  list-style: none;
  text-align: center;
}
.room_detail {
  border: dashed 1px grey;
  border-radius: 5%;
  height: 120px;
  width: 200px;
  text-align: center;
  padding-top: 25px;
}
.join {
  width: 100px;
  height: 40px;
  background-color: grey;
  border-radius: 5%;
  margin-top: 15px;
  border: none;
  cursor: pointer;
}
</style>