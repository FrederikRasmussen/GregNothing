recipes.remove(<industrialforegoing:crop_sower>, false);
recipes.addShaped(
    "crafttweaker_industrial_foregoing_plant_grower",
    <industrialforegoing:crop_sower>,
    [
      [<gregtech:meta_item_1:32600>, <exnihilocreatio:item_mesh:1>, <gregtech:meta_item_1:32600>],
      [<exnihilocreatio:item_mesh:1>, <teslacorelib:machine_case>, <exnihilocreatio:item_mesh:1>],
      [<immersiveengineering:wirecoil:6>, <ore:circuitBasic>, <immersiveengineering:wirecoil:6>]
    ]
);

recipes.remove(<industrialforegoing:crop_enrich_material_injector>, false);
recipes.addShaped(
    "crafttweaker_industrial_foregoing_plant_fertiliser",
    <industrialforegoing:crop_enrich_material_injector>,
    [
      [<gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32650>, <gregtech:meta_item_1:32600>],
      [<ore:circuitBasic>, <teslacorelib:machine_case>, <ore:circuitBasic>],
      [<immersiveengineering:wirecoil:6>, <ore:circuitBasic>, <immersiveengineering:wirecoil:6>]
    ]
);

recipes.remove(<industrialforegoing:crop_recolector>, false);
recipes.addShaped(
    "crafttweaker_industrial_foregoing_plant_gatherer",
    <industrialforegoing:crop_recolector>,
    [
      [<gregtech:meta_item_1:32600>, <contenttweaker:red_alloy_sawblade>, <gregtech:meta_item_1:32600>],
      [<contenttweaker:red_alloy_sawblade>, <teslacorelib:machine_case>, <contenttweaker:red_alloy_sawblade>],
      [<immersiveengineering:wirecoil:6>, <ore:circuitBasic>, <immersiveengineering:wirecoil:6>]
    ]
);

recipes.remove(<industrialforegoing:plant_interactor>, false);
recipes.addShaped(
    "crafttweaker_industrial_foregoing_plant_interactor",
    <industrialforegoing:plant_interactor>,
    [
      [<gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32650>, <gregtech:meta_item_1:32600>],
      [<gregtech:meta_item_1:32650>, <teslacorelib:machine_case>, <gregtech:meta_item_1:32650>],
      [<immersiveengineering:wirecoil:6>, <ore:circuitBasic>, <immersiveengineering:wirecoil:6>]
    ]
);
