import { get, post } from "./request";
import router from "../router";

const request = {
  login: async function ({ username, password }) {
    let data = await post("http://localhost:8080/login", {
      username,
      password,
    });
    return data;
  },

  registor: async function ({ username, password }) {
    let data = await post("http://localhost:8080/signup", {
      username,
      password,
    });
    return data;
  },

  putNews: function () {
    get("http://localhost:8080/putNews");
  },

  getNews: async function () {
    let data = await get("http://localhost:8080/getNews");
    return data;
  },

  getItems: async function () {
    let data = await get("http://localhost:8080/getItems");
    return data;
  },

  getRooms: async function () {
    let data = await get("http://localhost:8080/getRooms");
    return data;
  },

  getComments: async function () {
    let data = await get("http://localhost:8080/getComments");
    return data;
  },

  sendComment: async function ({ id, username, content, time }) {
    let data = await post("http://localhost:8080/postComments", {
      id,
      username,
      content,
      time,
    });
    return data;
  },

  joinAssociation: async function ({ username, association }) {
    let data = await post("http://localhost:8080/joinAssociation", {
      username,
      association,
    });
    return data;
  },

  getUsers: async function (username) {
    let data = await get("http://localhost:8080/getUsers", { username });
    return data;
  },

  purchase: async function ({ id, name, price, user_id, description }) {
    let data = await post("http://localhost:8080/purchase", {
      name,
      price,
      user_id,
      description,
    });
    return data;
  },

  getPurchase: async function () {
    let data = await get("http://localhost:8080/getPurchase");
    return data;
  },

  getAllUser: async function () {
    let data = await get("http://localhost:8080/getAllUser");
    return data;
  },

  updateUser: async function ({ username, id, password }) {
    let data = await post("http://localhost:8080/updateUser", {
      username,
      id,
      password,
    });
    return data;
  },

  afterGame: async function (userId) {
    let ans = await post("http://localhost:8080/afterGame", { userId });
  },

  delete_user: async function (userId) {
    let ans = await get("http://localhost:8080/delete_user", { userId });
  },

  delete_comment: async function (commentId) {
    let ans = await get("http://localhost:8080/delete_comment", { commentId });
  },

  delete_association: async function (associationId) {
    let ans = await get("http://localhost:8080/delete_association", {
      associationId,
    });
  },

  delete_news: async function (id) {
    let ans = await get("http://localhost:8080/delete_news", { id });
  },

  delete_purchase: async function (purchaseId) {
    let ans = await get("http://localhost:8080/delete_purchase", {
      purchaseId,
    });
  },

  delete_product: async function (productId) {
    let ans = await get("http://localhost:8080/delete_product", { productId });
  },

  getAllImage: async function () {
    let ans = await get("http://localhost:8080/getAllImages");
    return ans;
  },

  addAssociation: async function ({ association, user_id }) {
    let ans = await post("http://localhost:8080/addAssociation", {
      association,
      user_id,
    });
    return ans;
  },
};

export { request };
