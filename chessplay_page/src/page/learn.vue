<template>
  <div class="learning">
    <ul>
        <li>
            <img src="chessManual\程和呈-hhaanng.gif" alt="">
            <div>程和呈-hhaanng</div>
        </li>
        <li>
            <img src="chessManual\颠倒图.gif" alt="">
            <div>颠倒图</div>
        </li>
        <li>
            <img src="chessManual\回龙征.gif" alt="">
            <div>回龙征</div>
        </li>
        <li>
            <img src="chessManual\盲點1.gif" alt="">
            <div>盲點1</div>
        </li>
        <li>
            <img src="chessManual\排局.gif" alt="">
            <div>排局</div>
        </li>
        <li>
            <img src="chessManual\第六届驻邕高校杯杨绍灵劳里林.gif" alt="">
            <div>第六届驻邕高校杯杨绍灵劳里林</div>
        </li>
    </ul>
  </div>
</template>

<script>
import { request } from "../api/index";
export default {
  name: "LearnPage",
  data() {
    return {
      img_list: "",
    };
  },
  created() {
    let res = request.getAllImage();
    res.then((value) => {
      this.img_list = value.data.data;
    });
  },
};
</script>

<style scoped>
ul{
    margin-top: 10px;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}
li{
    width: 250px;
    list-style: none;
    margin-bottom: 15px;
    margin-right: 20px;
}
div{
    text-align: center;
}
img{
    width: 250px;
    height: 250px;
}
</style>