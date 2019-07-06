#modloaded gregtech

val mortar = <gregtech:meta_tool:12>;
recipes.addShapeless(
    "crafttweaker_gregtech_stone_dust",
    <ore:dustStone>.firstItem,
    [
      mortar,
      <minecraft:stone_button>
    ]
);