recipes.addShaped(
    "crafttweaker_contenttweaker_saw_flint",
    <contenttweaker:saw_flint>,
    [
      [<ore:gemFlint>, <ore:gemFlint>, <ore:stickWood>],
      [null, null, null],
      [null, null, null]
    ]
);

recipes.addShaped(
    "crafttweaker_gregtech_wooden_form",
    <gregtech:meta_item_2:32011>,
    [
      [null, <ore:plankWood>],
      [<contenttweaker:saw_flint>.anyDamage().transformDamage(), null]
    ]
);

recipes.addShapeless(
  "crafttweaker_saw_flint_oak_planks",
  <minecraft:planks:0> * 4,
  [
    <contenttweaker:saw_flint>.anyDamage().transformDamage(),
    <minecraft:log:0>
  ]
);

recipes.addShapeless(
  "crafttweaker_saw_flint_spruce_planks",
  <minecraft:planks:1> * 4,
  [
    <contenttweaker:saw_flint>.anyDamage().transformDamage(),
    <minecraft:log:1>
  ]
);

recipes.addShapeless(
  "crafttweaker_saw_flint_birch_planks",
  <minecraft:planks:2> * 4,
  [
    <contenttweaker:saw_flint>.anyDamage().transformDamage(),
    <minecraft:log:2>
  ]
);

recipes.addShapeless(
  "crafttweaker_saw_flint_jungle_planks",
  <minecraft:planks:3> * 4,
  [
    <contenttweaker:saw_flint>.anyDamage().transformDamage(),
    <minecraft:log:3>
  ]
);

recipes.addShapeless(
  "crafttweaker_saw_flint_acacia_planks",
  <minecraft:planks:4> * 4,
  [
    <contenttweaker:saw_flint>.anyDamage().transformDamage(),
    <minecraft:log:4>
  ]
);

recipes.addShapeless(
  "crafttweaker_saw_flint_dark_oak_planks",
  <minecraft:planks:5> * 4,
  [
    <contenttweaker:saw_flint>.anyDamage().transformDamage(),
    <minecraft:log:5>
  ]
);

recipes.addShapeless(
  "crafttweaker__rustic_saw_flint_olive_planks",
  <rustic:planks:0> * 4,
  [
    <contenttweaker:saw_flint>.anyDamage().transformDamage(),
    <rustic:log:0>
  ]
);

recipes.addShapeless(
  "crafttweaker_saw_flint_ironwood_planks",
  <rustic:planks:1> * 4,
  [
    <contenttweaker:saw_flint>.anyDamage().transformDamage(),
    <rustic:log:1>
  ]
);
