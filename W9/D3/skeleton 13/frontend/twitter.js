const { HotModuleReplacementPlugin } = require("webpack");
const FollowToggle = require("./follow_toggle.js");

const $buttons = $(".follow-toggle");
$buttons.each((index, el) => {
    new FollowToggle(el); 
}) 




