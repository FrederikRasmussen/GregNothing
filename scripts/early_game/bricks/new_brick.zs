#loader contenttweaker

import mods.contenttweaker.VanillaFactory;

val unbakedClayBrick = VanillaFactory.createItem("unbaked_clay_brick");
unbakedClayBrick.setLocalizedNameSupplier(
  function(itemStack) {
    return "Unbaked Clay Brick";
  }
);
unbakedClayBrick.register();

val unbakedGroutBrick = VanillaFactory.createItem("unbaked_grout_brick");
unbakedGroutBrick.setLocalizedNameSupplier(
  function(itemStack) {
    return "Unbaked Grout Brick";
  }
);
unbakedGroutBrick.register();
