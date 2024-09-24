import http from '@ohos.net.http';
// import { showMessage } from "../utils/status"; // 状态码处理

// 定义 baseURL
const baseURL = 'http://39.106.69.15:8081';

// 创建 token 方法
const token = () => {
  const storedToken = sessionStorage.getItem("token");
  return storedToken ? storedToken : '';
};

// 创建请求实例
const request = async (options: any) => {
  const httpRequest = http.createHttp();

  // 请求拦截：设置请求头和 token
  options.header = {
    ...options.header,
    "Content-Type": "application/json;charset=UTF-8",
    "token": token(),
  };

  try {
    // 发送请求
    let response = await httpRequest.request({
      ...options,
      url: baseURL + options.url, // 拼接 URL
      method: options.method || 'GET',
      readTimeout: 60000, // 请求超时时间
    });

    // 响应拦截：检查业务状态码
    const { code } = response.data;
    if (code && code !== 200) {
      showMessage(code); // 显示自定义的错误消息
      return Promise.reject(new Error(response.data.message || '业务逻辑错误'));
    }

    return response;

  } catch (error) {
    const { responseCode, data } = error;

    if (responseCode) {
      // 处理非 2xx 响应
      showAlert(data.message || '请求失败');
      return Promise.reject(data);
    } else {
      showWarning("网络连接异常,请稍后再试!");
    }
  }
};

export default request;