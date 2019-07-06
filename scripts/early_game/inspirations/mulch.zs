function addMulch(recipe_postfix, special_ingredient, result) {
  recipes.remove(result, true);
  recipes.addShaped(
    "crafttweaker_inspirations_mulch_" + recipe_postfix,
    result,
    [
      [<ore:stickWood>, special_ingredient, <ore:stickWood>],
      [null, <ore:dirt>, null],
      [<ore:stickWood>, null, <ore:stickWood>]
    ]
  );
}

addMulch("standard", null, <inspirations:mulch:0>);
addMulch("brown", null, <inspirations:mulch:1>);
addMulch("yellow", null, <inspirations:mulch:2>);
addMulch("amber", null, <inspirations:mulch:3>);
addMulch("ruby", null, <inspirations:mulch:4>);
addMulch("red", null, <inspirations:mulch:5>);
addMulch("black", null, <inspirations:mulch:6>);
addMulch("blue", null, <inspirations:mulch:7>);
