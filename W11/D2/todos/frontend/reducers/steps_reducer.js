import {
  RECEIVE_STEPS,
  RECEIVE_STEP,
  REMOVE_STEP,
} from "../actions/step_actions";

const initialState = {
  1: {
    id: 1,
    title: "walk to store",
    done: false,
    todo_id: 1,
  },
  2: {
    id: 2,
    title: "buy soap",
    done: false,
    todo_id: 1,
  }
};

const stepsReducer = (state = initialState, action) => {
  Object.freeze(state);

  let nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_STEPS:
      nextState = {};
      for (let i = 0; i < action.steps.length; i++) {
        const step = action.steps[i];
        nextState[step.id] = step;
      }
      return nextState;

    case RECEIVE_STEP:
      nextState[action.step.id] = action.step;
      return nextState;

    case REMOVE_STEP:
      let steps = Object.values(nextState);
      steps = steps.filter((ele) => ele.id !== action.step.id);
      nextState = {};

      for (let i = 0; i < steps.length; i++) {
        const new_step = steps[i];
        nextState[new_step.id] = new_step;
      }
      return nextState;

    default:
      return state;
  }
};

export default stepsReducer;
