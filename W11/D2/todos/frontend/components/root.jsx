import App from "./app";
import React from "react";
import { Provider } from "react-redux";

const Root = ({ store }) => (
  <Provider store={store}>
    <App/>
  </Provider>
);

export default Root;