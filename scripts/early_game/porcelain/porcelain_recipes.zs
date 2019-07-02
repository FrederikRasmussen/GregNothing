#modloaded ceramics gregtech exnihilocreatio

for porcelainClay in <ore:clayPorcelain>.items {
  recipes.remove(porcelainClay, false);
}

recipes.addShapeless(
    "crafttweaker_ceramics_unfired_clay_with_porcelain_ingredients",
    <ceramics:unfired_clay:4>,
    [
      <ore:clay>,
      <ore:craftingPorcelainIngredient>
    ]
);

recipes.addShapeless(
    "crafttweaker_ceramics_unfired_clay_with_flint_and_glass",
    <ceramics:unfired_clay:4>,
    [
      <ore:clay>,
      <ore:dustGlass>,
      <ore:dustFlint>
    ]
);