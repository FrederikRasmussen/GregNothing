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

val mortar = <gregtech:meta_tool:12>;

recipes.addShapeless(
    "crafttweaker_redstone_from_beetroot",
    <ore:dustRedstone>.firstItem,
    [
      mortar,
      <ore:dustStone>,
      <ore:cropBeetroot>
    ]
);
recipes.addShapeless(
    "crafttweaker_redstone_from_wildberries",
    <ore:dustRedstone>.firstItem,
    [
      mortar,
      <ore:dustStone>,
      <ore:cropWildberry>
    ]
);
recipes.addShapeless(
    "crafttweaker_redstone_from_blood",
    <ore:dustRedstone>.firstItem,
    [
      mortar,
      <ore:dustStone>,
      <ore:slimeballBlood>
    ]
);

print("initialised custom redstone recipes");
