recipes.remove(<cookingforblockheads:cooking_table>, false);
recipes.addShaped(
    "crafttweaker_cookingforblockheads_cooking_table",
    <cookingforblockheads:cooking_table>,
    [
      [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
      [<minecraft:hardened_clay>, <storagedrawers:basicdrawers:1>, <minecraft:hardened_clay>],
      [<minecraft:hardened_clay>, <ore:workbench>, <minecraft:hardened_clay>]
    ]
);

recipes.remove(<cookingforblockheads:oven>, false);
recipes.addShaped(
  "crafttweaker_cookingforblockheads_oven",
  <cookingforblockheads:oven>,
  [
    [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
    [<ore:plateIron>, <ore:craftingFurnace>, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
  ]
);

recipes.remove(<cookingforblockheads:fridge>, false);
recipes.addShaped(
  "crafttweaker_cookingforblockheads_fridge",
  <cookingforblockheads:fridge>,
  [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, <rustic:cabinet>, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
  ]
);

recipes.remove(<cookingforblockheads:sink>, false);
recipes.addShaped(
  "crafttweaker_cookingforblockheads_sink",
  <cookingforblockheads:sink>,
  [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<minecraft:hardened_clay>, <rustic:cabinet>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <nuclearcraft:water_source>, <minecraft:hardened_clay>]
  ]
);

recipes.remove(<cookingforblockheads:tool_rack>, false);
recipes.addShaped(
  "crafttweaker_cookingforblockheads_tool_rack",
  <cookingforblockheads:tool_rack>,
  [
    [null, null, null],
    [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],
    [<ore:nuggetIron>, null, <ore:nuggetIron>]
  ]
);

recipes.remove(<cookingforblockheads:toaster>, false);
recipes.addShaped(
  "crafttweaker_cookingforblockheads_toaster",
  <cookingforblockheads:toaster>,
  [
    [null, null, null],
    [<ore:plateIron>, <ore:plateIron>, <quark:iron_button>],
    [<ore:plateIron>, <ore:stickCupronickel>, <ore:wireCopper> | <ore:wireFineCopper>]
  ]
);

recipes.remove(<cookingforblockheads:spice_rack>, false);
recipes.addShaped(
  "crafttweaker_cookingforblockheads_spice_rack",
  <cookingforblockheads:spice_rack>,
  [
    [null, null, null],
    [<ore:plateWood>, <ore:plateWood>, <ore:plateWood>],
    [<ore:plateWood>, null, <ore:plateWood>]
  ]
);

recipes.remove(<cookingforblockheads:counter>, false);
recipes.addShaped(
    "crafttweaker_cookingforblockheads_counter",
    <cookingforblockheads:counter>,
    [
      [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
      [<minecraft:hardened_clay>, <rustic:cabinet>, <minecraft:hardened_clay>],
      [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]
    ]
);

recipes.remove(<cookingforblockheads:cabinet>, false);
recipes.addShaped(
    "crafttweaker_cookingforblockheads_cabinet",
    <cookingforblockheads:cabinet>,
    [
      [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>],
      [<minecraft:hardened_clay>, <rustic:cabinet>, <minecraft:hardened_clay>],
      [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]
    ]
);

recipes.remove(<cookingforblockheads:corner>, false);
recipes.addShaped(
    "crafttweaker_cookingforblockheads_corner",
    <cookingforblockheads:corner>,
    [
      [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
      [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>],
      [<minecraft:hardened_clay>, <minecraft:hardened_clay>, <minecraft:hardened_clay>]
    ]
);

// Leaves just the concrete recipe
recipes.removeByRecipeName("cookingforblockheads:kitchen_floor");

recipes.remove(<cookingforblockheads:fruit_basket>, false);
recipes.addShaped(
    "crafttweaker_cookingforblockheads_fruit_basket",
    <cookingforblockheads:fruit_basket>,
    [
      [null, null, null],
      [<ore:plateWood>, null, <ore:plateWood>],
      [null, <ore:plateWood>, null]
    ]
);

mods.jei.JEI.removeAndHide(<cookingforblockheads:recipe_book:2>, true);

recipes.remove(<cookingforblockheads:heating_unit>, false);
recipes.addShaped(
    "crafttweaker_cookingforblockheads_heating_unit",
    <cookingforblockheads:heating_unit>,
    [
      [null, null, null],
      [null, null, null],
      [<ore:ingotCupronickel>, <ore:wireCopper> | <ore:wireFineCopper>, <ore:ingotCupronickel>]
    ]
);

recipes.remove(<cookingforblockheads:ice_unit>, false);
recipes.addShaped(
    "crafttweaker_cookingforblockheads_ice_unit",
    <cookingforblockheads:ice_unit>,
    [
      [null, null, null],
      [null, null, null],
      [<ore:ingotCopper>, <ore:wireCopper> | <ore:wireFineCopper>, <ore:ingotCopper>]
    ]
);

recipes.remove(<cookingforblockheads:preservation_chamber>, false);
recipes.addShaped(
    "crafttweaker_cookingforblockheads_preservation_chamber",
    <cookingforblockheads:preservation_chamber>,
    [
      [null, null, null],
      [null, null, null],
      [<ore:ingotIron>, <minecraft:comparator>, <ore:ingotIron>]
    ]
);