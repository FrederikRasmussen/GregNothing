recipes.remove(<teslacorelib:machine_case>, false);
recipes.addShaped(
    "crafttweaker_teslacorelib_machine_case",
    <teslacorelib:machine_case>,
    [
      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
      [<ore:plateIron>, <gregtech:meta_tool:8>, <ore:plateIron>],
      [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
    ]
);

recipes.remove(<industrialforegoing:tree_fluid_extractor>, false);
recipes.addShaped(
    "crafttweaker_industrial_foregoing_extractor",
    <industrialforegoing:tree_fluid_extractor>,
    [
      [<ore:gearIron>, <immersiveengineering:connector:0>, <ore:gearIron>],
      [<ore:plateIron>, <teslacorelib:machine_case>, <ore:plateIron>],
      [<ore:gearIron>, <minecraft:bucket>, <ore:gearIron>]
    ]
);
