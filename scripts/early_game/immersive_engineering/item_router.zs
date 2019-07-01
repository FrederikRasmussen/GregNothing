// Remove Item Router recipe
recipes.remove(<immersiveengineering:wooden_device0:3>, true);

val conveyor = <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"});
recipes.addShaped(
    "crafttweaker_ie_item_router",
    <immersiveengineering:wooden_device0:3>,
    [
      [<ore:trapdoorWood>, conveyor, <ore:trapdoorWood>],
      [conveyor, <ore:gearWood>, conveyor],
      [<ore:trapdoorWood>, conveyor, <ore:trapdoorWood>]
    ]
);
