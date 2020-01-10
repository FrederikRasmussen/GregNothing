recipes.remove(<tconstruct:toolforge>, false);
recipes.addShaped(
  "crafftweaker_tconstruct_tool_forge",
  <tconstruct:toolforge>.withTag({textureBlock: {id: "tconstruct:metal", Count: 1 as byte, Damage: 5 as short}}),
  [
    [<ore:plateStone>, <ore:plateStone>, <ore:plateStone>],
    [<ore:plateBronze>, <tconstruct:tooltables:3>, <ore:plateBronze>],
    [<ore:plateBronze>, null, <ore:plateBronze>]
  ]
);
