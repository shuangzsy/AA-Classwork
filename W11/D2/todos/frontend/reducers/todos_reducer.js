import { RECEIVE_TODO, RECEIVE_TODOS, REMOVE_TODO } from "../actions/todo_actions";

const initialState = {
  1: {
    id: 1,
    title: "wash car",
    body: "with soap",
    done: false,
  },
  2: {
    id: 2,
    title: "wash dog",
    body: "with shampoo",
    done: true,
  },
};

const todosReducer = (state = initialState, action) => {
  Object.freeze(state);

  let nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_TODOS:
      nextState = {};
      for (let i = 0; i < action.todos.length; i++) {
        const todo = action.todos[i];
        nextState[todo.id] = todo;
      };
      return nextState;

    case RECEIVE_TODO:
      console.log("receive todo")
      nextState[action.todo.id] = action.todo;
      return nextState;

    case REMOVE_TODO:
      console.log("yes")
      let todos = Object.values(nextState);
      todos = todos.filter(ele => ele.id !== action.todo.id);
      nextState = {};

      for (let i = 0; i < todos.length; i++) {
        const new_todo = todos[i];
        nextState[new_todo.id] = new_todo;
      };
      return nextState;
      
    default:
      return state;
  }
};

export default todosReducer;
