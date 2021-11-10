import configureStore from "./store/store";
import { receiveTodo, receiveTodos } from "./actions/todo_actions";

document.addEventListener("DOMContentLoaded", () => {
  const store = configureStore();
  console.log("hello");
  window.store = store;
  window.receiveTodo = receiveTodo;
  window.receiveTodos = receiveTodos;
})