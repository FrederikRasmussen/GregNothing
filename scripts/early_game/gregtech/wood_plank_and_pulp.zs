#modloaded gregtech

val hammer = <gregtech:meta_tool:6>;

recipes.addShapeless(
    "crafttweaker_gregtech_wood_pulp_from_log",
    <ore:dustWood>.firstItem * 2,
    [
      hammer,
      <ore:logWood>
    ]
);
recipes.addShapeless(
    "crafttweaker_gregtech_wood_pulp_from_planks",
    <ore:dustWood>.firstItem,
    [
      hammer,
      <ore:plankWood>
    ]
);

recipes.addShaped(
    "crafttweaker_gregtech_wood_plank",
    <ore:plateWood>.firstItem,
    [
      [null, hammer, null],
      [null, <ore:dustWood>, null],
      [null, <gregtech:meta_item_2:32012>.reuse(), null]
    ]
);
