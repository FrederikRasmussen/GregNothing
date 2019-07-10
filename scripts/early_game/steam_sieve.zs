recipes.remove(<gregtech:machine:2749>, false);
recipes.addShaped(
    "crafttweaker_gregtechsieves_steam_sieve",
    <gregtech:machine:2749>,
    [
      [<ore:pipeSmallBronze>, <ore:plateBronze>, <ore:pipeSmallBronze>],
      [
        <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),
        <gregtech:machine_casing:10>,
        <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})
      ],
      [<ore:pipeSmallBronze>, <ore:plateBronze>, <ore:pipeSmallBronze>]
    ]
);