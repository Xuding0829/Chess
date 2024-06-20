import axios from "axios";
import router from "@/router";

axios.defaults.timeout = 5000;
axios.defaults.withCredentials = true;

axios.interceptors.response.use((response) => {
  if (response.status === 200) {
    return Promise.resolve(response);
  } else return Promise.reject(response);
});

export function get(url, params = null) {
  return new Promise((resolve, reject) => {
    axios.get(url, { params }).then(
      (response) => resolve(response),
      (error) => reject(error)
    );
  });
}

export function post(url, data = {}) {
  return new Promise((resolve, reject) => {
    axios.post(url, data).then(
      (response) => resolve(response),
      (error) => reject(error)
    );
  });
}
