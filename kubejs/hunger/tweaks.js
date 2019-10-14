events.listen("player.tick", function (event) {
  if(event.player.ticksExisted % 1200 == 0) {
    if (event.player.playerEntity.func_71024_bL().func_75116_a() > 6) {
      event.player.addFood(-1, 0);
    }
  }
});
