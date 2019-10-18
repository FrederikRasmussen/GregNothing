#loader contenttweaker

import mods.contenttweaker.VanillaFactory;

val redAlloyGrinder = VanillaFactory.createItem("red_alloy_grinder");
redAlloyGrinder.setLocalizedNameSupplier(
  function(itemStack) {
    return "Red Alloy Grinding Head";
  }
);
redAlloyGrinder.register();
