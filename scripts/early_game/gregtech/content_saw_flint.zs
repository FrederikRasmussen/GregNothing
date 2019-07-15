#loader contenttweaker

import mods.contenttweaker.VanillaFactory;

val saw = VanillaFactory.createItem("saw_flint");
saw.setLocalizedNameSupplier(
  function(itemStack) {
    return "Flint Saw";
  }
);
saw.register();
