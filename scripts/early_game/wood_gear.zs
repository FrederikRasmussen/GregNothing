<ore:gearWood>.remove([
  <appliedenergistics2:material:40>,
  <thermalfoundation:material:22>
]);

mods.jei.JEI.hide(<appliedenergistics2:material:40>);
mods.jei.JEI.hide(<thermalfoundation:material:22>);

recipes.remove(<appliedenergistics2:material:40>, false);

recipes.addShaped(
    "crafttweaker_wood_gear",
    <gregtech:meta_item_2:26196>,
    [
      [<ore:stickWood>, <ore:plateWood>, <ore:stickWood>],
      [<ore:plateWood>, <gregtech:meta_tool:34> | <gregtech:meta_tool:11>, <ore:plateWood>],
      [<ore:stickWood>, <ore:plateWood>, <ore:stickWood>]
    ]
);
