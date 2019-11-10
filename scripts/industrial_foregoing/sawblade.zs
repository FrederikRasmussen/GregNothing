#loader contenttweaker

import mods.contenttweaker.VanillaFactory;

val redAlloySawblade = VanillaFactory.createItem("red_alloy_sawblade");
redAlloySawblade.setLocalizedNameSupplier(
  function(itemStack) {
    return "Red Alloy Sawblade";
  }
);
redAlloySawblade.register();
