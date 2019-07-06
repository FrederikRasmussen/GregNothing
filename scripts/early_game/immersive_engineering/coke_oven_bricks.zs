val cokeOvenBrick = <gregtech:meta_item_2:32016>;

recipes.remove(<immersiveengineering:stone_decoration:0>, false);

recipes.addShaped(
    "crafttweaker_ie_coke_brick",
    <immersiveengineering:stone_decoration:0>,
    [
      [cokeOvenBrick, cokeOvenBrick],
      [cokeOvenBrick, cokeOvenBrick]
    ]
);

recipes.addShaped(
    "crafttweaker_ie_coke_brick_from_slabs",
    <immersiveengineering:stone_decoration:0>,
    [
      [null, <immersiveengineering:stone_decoration_slab:0>],
      [null, <immersiveengineering:stone_decoration_slab:0>]
    ]
);