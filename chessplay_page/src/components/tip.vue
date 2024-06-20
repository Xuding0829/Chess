<template>
  <div class="customer-service-dialog">
    <div class="message">
      <label>协会名称：</label>
      <input type="text" />
    </div>
    <button @click="create">创建协会</button>
  </div>
</template>
 
<script>
import { request } from "@/api";
import { mapState } from "vuex";
import pubsub from "pubsub-js";
export default {
  name: "CustomerServiceDialog",
  computed: {
    ...mapState({ user: "user" }),
  },
  methods: {
    create() {
      pubsub.publish("hello", false);
      const input = document.querySelector("input");
      request
        .addAssociation({
          association: input.value,
          user_id: this.user.id,
        })
        .then((value) => {
          this.$emit("getShow", value.data.data);
          this.$store.dispatch("getRooms");
        });
    },
  },
};
</script>
 
<style scoped>
button {
  width: 150px;
  height: 35px;
  border: none;
  border-radius: 5%;
  display: block;
  position: absolute;
  top: 100px;
  left: 120px;
  cursor: pointer;
}
.customer-service-dialog {
  position: absolute;
  top: 200px;
  left: 500px;
  width: 400px;
  height: 150px;
  border: solid 1px black;
  border-radius: 5%;
  text-align: center;
  background-color: white;
}

input {
  height: 35px;
  width: 200px;
  padding-left: 10px;
  outline: none;
}

.message {
  display: flex;
  position: absolute;
  top: 30px;
  text-align: center;
  left: 50px;
}
</style>