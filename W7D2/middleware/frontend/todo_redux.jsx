import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

//
// const addLoggingToDispatch = store => next => action => {
//   console.log('state pre-dispatch: ', store.getState());
//   console.log(action);
//
//   let result = next(action);
//
//   console.log('state post-dispatch: ', store.getState());
//   return result;
// };
//
// const applyMiddlewares = (store, ...middlewares) => {
//   let dispatch = store.dispatch;
//   middlewares.forEach( middleware => dispatch = middleware(store)(dispatch) );
//
//   return Object.assign({}, store, { dispatch });
// };
//
// document.addEventListener('DOMContentLoaded', () => {
//   const preloadedState = localStorage.state ?
//     JSON.parse(localStorage.state) : {};
//   let store = configureStore(preloadedState);
//   store = applyMiddlewares(store, addLoggingToDispatch);
//
//   const root = document.getElementById('content');
//   ReactDOM.render(<Root store={store} />, root);
// });
