function FollowToggle(){
  const $button = $(".follow-toggle");
  this.userId = $button.data("user-id");
  this.followState = $button.data("initial-follow-state");
}

module.exports = FollowToggle;