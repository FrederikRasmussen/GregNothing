import mods.industrialforegoing.Extractor;

Extractor.add(<gregtech:log:0>, <liquid:latex> * 5);

recipes.remove(<industrialforegoing:tree_fluid_extractor>, false);
recipes.addShaped(
    "crafttweaker_industrial_foregoing_extractor",
    <industrialforegoing:tree_fluid_extractor>,
    [
      [<ore:gearIron>, <contenttweaker:red_alloy_sawblade>, <ore:gearIron>],
      [<ore:pipeSmallBronze>, <teslacorelib:machine_case>, <ore:pipeSmallBronze>],
      [<gregtech:machine:811>, <ore:pipeSmallBronze>, <gregtech:machine:811>]
    ]
);
