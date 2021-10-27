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