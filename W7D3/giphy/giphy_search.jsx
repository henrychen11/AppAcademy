import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

// import	{fetchSearchGiphys} from './util/api_util';
import {receiveSearchGiphys, fetchSearchGiphys} from './actions/giphy_actions';

// console.log(fetchSearchGiphys);
document.addEventListener('DOMContentLoaded', () => {

	const store = configureStore();
	window.store = store;
	window.receiveSearchGiphys = receiveSearchGiphys;
	window.fetchSearchGiphys = fetchSearchGiphys;

	const root = document.getElementById('root');
	// ReactDOM.render(<h1 store={store}>HELLO</h1>, root);
	ReactDOM.render(<Root store={store} />, root);
});
