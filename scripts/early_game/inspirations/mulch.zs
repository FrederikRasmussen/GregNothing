#modloaded inspirations

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

function addMulch(
  recipe_postfix as string,
  special_ingredient as IIngredient,
  result as IItemStack
) {
  val recipeName = "crafttweaker_inspirations_mulch_" + recipe_postfix;
  recipes.remove(result, true);
  recipes.addShaped(
    recipeName,
    result,
    [
      [<ore:stickWood>, special_ingredient, <ore:stickWood>],
      [null, <ore:dirt>, null],
      [<ore:stickWood>, null, <ore:stickWood>]
    ]
  );
}

addMulch("standard", null, <inspirations:mulch:0>);
addMulch("brown", <ore:dyeBrown>, <inspirations:mulch:1>);
addMulch("yellow", <ore:dyeYellow>, <inspirations:mulch:2>);
addMulch("amber", <ore:dyeOrange>, <inspirations:mulch:3>);
addMulch("ruby", <ore:dyeMagenta>, <inspirations:mulch:4>);
addMulch("red", <ore:dyeRed>, <inspirations:mulch:5>);
addMulch("black", <ore:dyeBlack>, <inspirations:mulch:6>);
addMulch("blue", <ore:dyeBlue>, <inspirations:mulch:7>);
