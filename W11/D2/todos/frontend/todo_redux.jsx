import configureStore from "./store/store";
import { receiveTodo, receiveTodos, removeTodo } from "./actions/todo_actions";
import { receiveSteps, receiveStep, removeStep } from "./actions/step_actions";
import allTodos from "./reducers/selectors";
import Root from "./components/root";

import React from "react";
import ReactDOM from "react-dom";



document.addEventListener("DOMContentLoaded", () => {
  const store = configureStore();
  console.log("hello");
  window.store = store;

  window.receiveTodos = receiveTodos;
  window.receiveTodo = receiveTodo;
  window.removeTodo = removeTodo;
  window.allTodos = allTodos;
  
  window.receiveSteps = receiveSteps;
  window.receiveStep = receiveStep;
  window.removeStep = removeStep;

  const main = document.getElementById("main");
  ReactDOM.render(<Root store={store}/>, main);
})