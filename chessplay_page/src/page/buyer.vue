<template>
  <div class="buyer">
    <h2 class="title">道具</h2>
    <div class="coin" style="margin-left: 20px; margin-bottom: 5px">
      金币：{{ user.coin }}
    </div>
    <div class="show-item">
      <ul class="item-ul left">
        <li v-for="item in items" :key="item.id" class="item-li">
          <div class="item-detail" @click="buy(item.id)">
            <img :src="item.product_image" alt="" class="item-pic" />
            <div class="item">{{ item.item }}</div>
            <div class="addmessage">
              <button class="purchase">购买</button>
              <div class="price" style="color: red">{{ item.price }}</div>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
</template>
  
<script>
import { request } from "@/api";
import { mapState } from "vuex";
export default {
  name: "ShoppingIndex",
  data() {
    return {
      coin: 0,
    };
  },
  computed: {
    ...mapState({ items: "itemlist", user: "user" }),
  },
  mounted() {
    this.$store.dispatch("getItems");
  },
  methods: {
    skip: function () {
      if (this.$store.state.login_state === 0)
        this.$router.replace("/shoppingcar");
      else this.$router.replace("/login");
    },

    buy: function (value) {
      // console.log(this.user.id);
      for (let i = 0; i < this.items.length; i++) {
        if (this.items[i].id === value) {
          console.log(this.user.coin);
          console.log(this.items[i].price);
          if (this.user.coin - this.items[i].price >= 0) {
            this.user.coin -= this.items[i].price;
            sessionStorage.setItem("store", JSON.stringify(this.$store.state));
            request.purchase({
              id: null,
              name: this.items[i].name,
              user_id: this.user.id,
              price: this.items[i].price,
              description: this.items[i].description,
            });
          } else {
            alert("金币不足");
            break;
          }
        }
      }
    },
  },
};
</script>
  
<style scoped>
.purchase {
  width: 80px;
  height: 30px;
}
.title {
  text-align: center;
  margin: 10px 0 10px;
}
.shopping-li {
  display: flex;
  justify-content: right;

  li {
    padding: 0 20px;
    list-style: none;
    height: 40px;
    line-height: 40px;
    color: grey;
    font-size: 12px;
    cursor: pointer;
  }
  li:last-child {
    padding: 0;
  }
}

.show-item {
  display: flex;
  justify-content: space-between;
}

.item-pic {
  height: 150px;
  width: 150px;
}

.addmessage {
  margin-top: 10px;
  display: flex;
  justify-content: space-between;
  line-height: 30px;
}

.item-ul {
  display: flex;
  width: 850px;
  justify-content: space-between;
  flex-flow: wrap;
}

.item-li {
  margin-bottom: 10px;
  padding: 0 20px;
  cursor: pointer;
  list-style: none;
  width: 150px;
  height: 200px;
}
</style>