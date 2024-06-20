import VueRouter from "vue-router";
import LoginPage from "@/page/login";
import IndexPage from "@/page/Home";
import ShoppingIndex from "@/page/buyer.vue";
import NewsIndex from "@/page/news";
import CommunityPage from "@/page/community";
import SignUp from "@/page/signup";
import DetailPage from "@/page/detail";
import AssociationIndex from "@/page/association";
import ShoppingCar from "@/page/shoppcar";
import PersonalPage from "@/page/myself";
import AdminPage from "@/page/admin";
import LearnPage from "@/page/learn";
import PlayPage from "@/page/play"
import Vue from "vue";
Vue.use(VueRouter);

// 解决重复点击路由报错的BUG
const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push(location) {
  return originalPush.call(this, location).catch((err) => err)
}

const routes = [
  {
    path: "/play",
    component: PlayPage,
  },
  {
    path: "/shopping",
    component: ShoppingIndex,
  },
  {
    path: "/news",
    component: NewsIndex,
  },
  {
    path: "/login",
    component: LoginPage,
  },
  {
    path: "/community",
    component: CommunityPage,
  },
  {
    path: "/signup",
    component: SignUp,
  },
  {
    name: "detail",
    path: "/detail/:id",
    component: DetailPage,
  },
  {
    path: "/association",
    component: AssociationIndex,
  },
  {
    path: "/shoppcar",
    component: ShoppingCar,
  },
  {
    path: "/personal",
    component: PersonalPage,
  },
  {
    path: "/admin",
    component: AdminPage,
  },
  {
    path: "/learn",
    component: LearnPage,
  },
];

const router = new VueRouter({
  mode: "history",
  routes,
});

export default router;
