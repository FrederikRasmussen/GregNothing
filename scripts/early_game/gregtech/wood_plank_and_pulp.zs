#modloaded gregtech

val mortar = <gregtech:meta_tool:12>;
recipes.addShapeless(
    "crafttweaker_gregtech_wood_pulp",
    <ore:dustWood>.firstItem,
    [
      mortar,
      <ore:buttonWood>
    ]
);

val hammer = <gregtech:meta_tool:6>;
recipes.addShaped(
    "crafttweaker_gregtech_wood_plank",
    <ore:plateWood>.firstItem,
    [
      [null, hammer, null],
      [null, <ore:dustWood>, null],
      [null, <ore:dustWood>, null]
    ]
);