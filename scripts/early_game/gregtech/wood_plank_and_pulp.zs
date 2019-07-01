#modloaded gregtech

recipes.addShaped(
    "crafttweaker_gregtech_wood_pulp",
    <ore:dustWood>.firstItem,
    [
      [<ore:buttonWood>, null],
      [<ore:craftingToolMortar>, null]
    ]
);

recipes.addShaped(
    "crafttweaker_gregtech_wood_plank",
    <ore:plateWood>.firstItem,
    [
      [null, <ore:craftingToolHardHammer>, null],
      [null, <ore:dustWood>, null],
      [null, <ore:dustWood>, null]
    ]
);