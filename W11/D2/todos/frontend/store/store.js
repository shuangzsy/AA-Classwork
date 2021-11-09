import {createStore} from 'redux';
import rootReducer from '../reducers/root_reducer';

export default configureStore = (preloadedState={}) => {
  return createStore(rootReducer, preloadedState);
}