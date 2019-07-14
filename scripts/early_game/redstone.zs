#modloaded minecraft tconstruct gregtech rustic inspirations

import crafttweaker.oredict.IOreDictEntry;

print("Initialising custom redstone recipes");

mods.tconstruct.Melting.addRecipe(
  <liquid:blood> * 200, <inspirations:edibles:0>
);

mods.tconstruct.Casting.addTableRecipe(
  <minecraft:redstone>, <ore:dustStone>, <liquid:blood>, 10, true
);

mods.tconstruct.Casting.addTableRecipe(
  <minecraft:redstone>, <ore:dustStone>, <liquid:wildberryjuice>, 125, true
);

mods.tconstruct.Casting.addTableRecipe(
  <minecraft:redstone>, <ore:dustStone>, <liquid:beetroot_soup>, 25, true
);

print("initialised custom redstone recipes");