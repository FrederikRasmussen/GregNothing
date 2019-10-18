recipes.addShaped(
    "crafttweaker_red_alloy_grinder",
    <contenttweaker:red_alloy_grinder>,
    [
      [<ore:dustRedAlloy>, <ore:plateBronze>, <ore:dustRedAlloy>],
      [<ore:plateBronze>, <ore:ingotRedAlloy>, <ore:plateBronze>],
      [<ore:dustRedAlloy>, <ore:plateBronze>, <ore:dustRedAlloy>]
    ]
);

val maceratorSteam = <gregtech:machine:9>;
recipes.remove(maceratorSteam, false);
recipes.addShaped(
    "crafttweaker_gregtech_steam_macerator_bronze",
    maceratorSteam,
    [
      [<contenttweaker:red_alloy_grinder>, <ore:pipeSmallBronze>, <contenttweaker:red_alloy_grinder>],
      [<ore:pipeSmallBronze>, <gregtech:machine_casing:10>, <ore:pipeSmallBronze>],
      [<ore:craftingPiston>, <ore:pipeSmallBronze>, <ore:craftingPiston>]
    ]
);

val maceratorHighPressureSteam = <gregtech:machine:10>;
recipes.remove(maceratorHighPressureSteam, false);
recipes.addShaped(
    "crafttweaker_gregtech_steam_macerator_steel",
    maceratorHighPressureSteam,
    [
      [<contenttweaker:red_alloy_grinder>, <ore:pipeSmallSteel>, <contenttweaker:red_alloy_grinder>],
      [<ore:pipeSmallSteel>, <gregtech:machine_casing:12>, <ore:pipeSmallSteel>],
      [<ore:craftingPiston>, <ore:pipeSmallSteel>, <ore:craftingPiston>]
    ]
);
