<template>
  <div class="detail_message">
    <customer-service-dialog v-if="show"></customer-service-dialog>
    <ul @click="show_detail" class="choose">
      <li>用户</li>
      <li>协会</li>
      <li>评论</li>
      <li>购买情况</li>
      <li>产品</li>
      <li>新闻</li>
    </ul>
    <div class="detail">
      <ul class="show_detail">
        <li
          v-for="(list, index) in user_list"
          :key="list.id"
          @click="delete_user(index)"
        >
          用户名：{{ list.username }} &nbsp; 密码：{{ list.password }} &nbsp;
          ID：{{ list.id }} &nbsp; 积分：{{ list.score }} &nbsp; 协会：{{
            list.association
          }}
          &nbsp; 身份：{{ list.identity }} &nbsp; 金币：{{ list.coin }}
          <button>删除用户</button>
        </li>
        <li
          v-for="(list, index) in association_list"
          :key="list.id"
          @click="delete_association(index)"
        >
          ID：{{ list.id }} 协会会长：{{ list.admin }} 协会名称：{{
            list.name
          }}
          协会人数：{{ list.num }} 协会总积分：{{ list.sum_score }}
          <button>删除协会</button>
        </li>
        <li
          v-for="(list, index) in comment_list"
          :key="list.id"
          @click="delete_comment(index)"
        >
          ID：{{ list.id }} 内容：{{ list.content }} 发布人：{{
            list.username
          }}
          发布时间：{{ list.time }}
          <button>删除评论</button>
        </li>
        <li
          v-for="(list, index) in purchase_list"
          :key="list.id"
          @click="delete_purchase(index)"
        >
          ID：{{ list.id }} 名称：{{ list.name }} 价格：{{
            list.price
          }}
          描述：{{ list.description }} 购买者ID：{{ list.user_id }}
        </li>
        <li
          v-for="(list, index) in product_list"
          :key="list.id"
          @click="delete_product(index)"
        >
          ID：{{ list.id }} 名称：{{ list.name }} 价格：{{
            list.price
          }}
          描述：{{ list.description }}
          <button>删除产品</button>
        </li>
        <li
          v-for="(list, index) in new_list"
          :key="list.id"
          @click="delete_news(index)"
        >
         ID：{{ list.id }} 名称：{{ list.title }} 发布信息：{{ list.time }}
          <button>删除新闻</button>
        </li>
        <button class="create" v-if="association_list" @click="create">
          创建协会
        </button>
      </ul>
    </div>
  </div>
</template>

<script>
import { request } from "../api/index";
import pubsub from 'pubsub-js' 
import CustomerServiceDialog from "../components/tip.vue";
export default {
  name: "AdminPage",
  data() {
    return {
      user_list: "",
      association_list: "",
      comment_list: "",
      purchase_list: "",
      product_list: "",
      new_list: "",
      show: false,
    };
  },
  updated() {
    pubsub.subscribe('hello', (a, value) => {
      this.show = value
    })
  },
  components: {
    CustomerServiceDialog,
  },
  methods: {
    show_detail() {
      this.user_list = null;
      this.association_list = null;
      this.comment_list = null;
      this.purchase_list = null;
      this.product_list = null;
      this.new_list = null;
      if (event.target.innerText === "用户") {
        let res = request.getAllUser();
        res.then((value) => {
          this.user_list = value.data.data;
        });
      } else if (event.target.innerText === "协会") {
        let res = request.getRooms();
        res.then((value) => {
          this.association_list = value.data.data;
        });
      } else if (event.target.innerText === "评论") {
        let res = request.getComments();
        res.then((value) => {
          this.comment_list = value.data.data;
        });
      } else if (event.target.innerText === "购买情况") {
        let res = request.getPurchase();
        res.then((value) => {
          this.purchase_list = value.data.data;
        });
      } else if (event.target.innerText === "产品") {
        let res = request.getItems();
        res.then((value) => {
          this.product_list = value.data.data;
        });
      } else if (event.target.innerText === "新闻") {
        let res = request.getNews();
        res.then((value) => {
          this.new_list = value.data.data;
        });
      }
    },
    delete_user(value) {
      const id = event.currentTarget.innerText.match(/ID：(\d+)/)[1];
      let ans = request.delete_user(id);
      this.user_list.splice(value, 1);
    },
    delete_association(value) {
      const id = event.currentTarget.innerText.match(/ID：(\d+)/)[1];
      let ans = request.delete_association(id);
      this.association_list.splice(value, 1);
    },
    delete_comment(value) {
      const id = event.currentTarget.innerText.match(/ID：(\d+)/)[1];
      let ans = request.delete_comment(id);
      this.comment_list.splice(value, 1);
    },
    delete_purchase(value) {
      const id = event.currentTarget.innerText.match(/ID：(\d+)/)[1];
      let ans = request.delete_purchase(id);
      this.purchase_list.splice(value, 1);
    },
    delete_product(value) {
      const id = event.currentTarget.innerText.match(/ID：(\d+)/)[1];
      let ans = request.delete_product(id);
      this.product_list.splice(value, 1);
    },
    delete_news(value) {
      const id = event.currentTarget.innerText.match(/ID：(\d+)/)[1];
      // console.log(event.currentTarget.innerText);
      let ans = request.delete_news(id);
      this.new_list.splice(value, 1);
    },
    create() {
      this.show = true;
    },
  },
};
</script>

<style scoped>
.create {
  margin-top: 30px;
  margin-left: 400px;
}
.choose {
  margin-left: 150px;
  width: 600px;
  margin-top: 20px;
  display: flex;
  justify-content: space-between;
  list-style: none;
  height: 35px;
}
.choose li {
  cursor: pointer;
  width: 100px;
  border-right: solid 1px black;
  align-content: center;
  text-align: center;
  height: 20px;
}
.show_detail li {
  list-style: none;
  text-align: center;
  margin-top: 25px;
}
li:last-child {
  border: none;
}
button {
  margin-left: 30px;
  cursor: pointer;
  width: 70px;
  height: 30px;
  background-color: orange;
  border: none;
  border-radius: 5%;
}
</style>