/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./frontend/follow_toggle.js":
/*!***********************************!*\
  !*** ./frontend/follow_toggle.js ***!
  \***********************************/
/***/ ((module) => {

function FollowToggle(el){
  this.el = el; 
  this.userId = el.data("user-id");
  this.followState = el.data("initial-follow-state");
  this.render(); 
}

FollowToggle.prototype.render = function() {
  if (this.followState === 'unfollowed') {
    return "unfollowed"; 
  } else if (this.followState === "followed"){
    return "followed";
  }
}



module.exports = FollowToggle;

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		var cachedModule = __webpack_module_cache__[moduleId];
/******/ 		if (cachedModule !== undefined) {
/******/ 			return cachedModule.exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
var __webpack_exports__ = {};
// This entry need to be wrapped in an IIFE because it need to be isolated against other modules in the chunk.
(() => {
/*!*****************************!*\
  !*** ./frontend/twitter.js ***!
  \*****************************/
const { HotModuleReplacementPlugin } = __webpack_require__(Object(function webpackMissingModule() { var e = new Error("Cannot find module 'webpack'"); e.code = 'MODULE_NOT_FOUND'; throw e; }()));
const FollowToggle = __webpack_require__(/*! ./follow_toggle.js */ "./frontend/follow_toggle.js");

const $buttons = $(".follow-toggle");
$buttons.each((index, el) => {
    new FollowToggle(el); 
}) 





})();

/******/ })()
;
//# sourceMappingURL=bundle.js.map