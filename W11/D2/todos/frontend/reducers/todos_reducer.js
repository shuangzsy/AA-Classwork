import { RECEIVE_TODO, RECEIVE_TODOS } from "../actions/todo_actions";

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

  const nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_TODOS:
      for (let i = 0; i < action.todos.length; i++) {
        const todo = action.todos[i];
        nextState[todo.id.value] = todo.id.value;
      };
      return nextState;
    case RECEIVE_TODO:
      nextState[action.todo.id] = action.todo;
      return nextState;
    default:
      return state;
  }
};

export default todosReducer;
