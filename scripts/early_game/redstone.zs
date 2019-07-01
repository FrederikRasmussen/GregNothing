#modloaded minecraft tconstruct gregtech rustic inspirations

import crafttweaker.oredict.IOreDictEntry;

print("Initialising custom redstone recipes");

mods.tconstruct.Casting.addTableRecipe(
  <minecraft:redstone>, <ore:dustStone>, <liquid:blood>, 30, true
);

mods.tconstruct.Casting.addTableRecipe(
  <minecraft:redstone>, <ore:dustStone>, <liquid:wildberryjuice>, 30, true
);

mods.tconstruct.Casting.addTableRecipe(
  <minecraft:redstone>, <ore:dustStone>, <liquid:beetroot_soup>, 30, true
);

print("initialised custom redstone recipes");