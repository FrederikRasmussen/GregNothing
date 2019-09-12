import mods.immersiveengineering.CokeOven;

CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);
CokeOven.addRecipe(<ore:blockCoke>.firstItem, 5000, <ore:blockCoal>, 1800 * 9);

CokeOven.removeRecipe(<immersiveengineering:material:6>);
CokeOven.addRecipe(<ore:gemCoke>.firstItem, 500, <ore:coal>, 1800);

recipes.remove(<ore:blockFuelCoke>, false);
recipes.addShapeless(
  "crafttweaker_coke_block",
  <ore:blockCoke>.firstItem,
  [
    <ore:gemCoke>.firstItem,
    <ore:gemCoke>.firstItem,
    <ore:gemCoke>.firstItem,
    <ore:gemCoke>.firstItem,
    <ore:gemCoke>.firstItem,
    <ore:gemCoke>.firstItem,
    <ore:gemCoke>.firstItem,
    <ore:gemCoke>.firstItem,
    <ore:gemCoke>.firstItem
  ]
);
