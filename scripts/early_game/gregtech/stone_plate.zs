#modloaded gregtech

val hammer = <gregtech:meta_tool:6>;

recipes.addShaped(
    "crafttweaker_gregtech_stone_plate",
    <ore:plateStone>.firstItem,
    [
      [null, hammer, null],
      [null, <ore:dustStone>, null],
      [null, <gregtech:meta_item_2:32012>.reuse(), null]
    ]
);
