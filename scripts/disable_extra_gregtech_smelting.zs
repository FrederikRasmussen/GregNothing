#modloaded minecraft gregtech
#priority 3

import mods.jei.JEI;

print("Removing gravel, netherrack, endstone, sand, blackgranite, redgranite, marble, and basalt ore smelting");
/*
for item in loadedMods["gregtech"].items {
  for ore in item.ores {
    val name = ore.name;
    if (
      name.startsWith("ore") &&
      item.metadata > 0
    ) {
      JEI.removeAndHide(item);
    }
    break;
  }
}

for recipe in furnace.all {
  val input = recipe.input;
  for ore in input.ores {
    val name = ore.name;
    if (
        name.startsWith("oreGravel") ||
        name.startsWith("oreNetherrack") ||
        name.startsWith("oreEndstone") ||
        name.startsWith("oreSand") ||
        name.startsWith("oreBlackgranite") ||
        name.startsWith("oreRedgranite") ||
        name.startsWith("oreMarble") ||
        name.startsWith("oreBasalt")
    ) {
      furnace.remove(recipe.output, input);
    } else if (
      name.startsWith("ore") &&
      input.metadata > 0
    ) {
      furnace.remove(recipe.output, input);
    }
    break;
  }
}
*/

print("Removed extra GregTech smelting recipes");