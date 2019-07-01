// <ore:plateIron>
// <ore:pipeMediumBronze>
// <ore:wireCopper>
// <ore:dustredstone>

recipes.remove(<immersiveengineering:metal_device0:5>, true);

recipes.addShaped(
    "crafttweaker_ie_fluid_pump",
    <immersiveengineering:metal_device0:5>,
    [
      [null, <ore:wireCopper>, null],
      [<ore:dustredstone>, <ore:rotorTin>, <ore:dustredstone>],
      [<ore:plateIron>, <ore:frameGtIron>, <ore:plateIron>]
    ]
);
