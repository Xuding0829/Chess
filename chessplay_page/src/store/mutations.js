const mutations = {
  getNews(state, value) {
    state.newslist = value;
  },

  getRooms(state, value) {
    state.roomlist = value;
  },

  getItems(state, value) {
    state.itemlist = value;
    console.log(state.itemlist);
  },

  getComments(state, value) {
    state.commentlist = value;
  },

  getUsers(state, value) {
    state.user = value;
  },

  getPurchase(state, value) {
    state.buyerlist = value;
    // console.log(state.buyerlist);
  }
};
export default mutations;
