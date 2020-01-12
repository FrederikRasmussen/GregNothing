import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;
import mods.tconstruct.Casting;

Casting.addBasinRecipe(
  <immersiveengineering:stone_decoration:5>,
  null,
  <liquid:concrete>,
  1296,
  false,
  100
);

val concrete = <immersiveengineering:stone_decoration:5>;

val fluid_solidifier = RecipeMap.getByName("fluid_solidifier");
fluid_solidifier.findRecipe(8, [<gregtech:meta_item_1:32308>], [<liquid:concrete> * 1296]).remove();
fluid_solidifier.recipeBuilder()
    .notConsumable(<gregtech:meta_item_1:32308>)
    .fluidInputs([<liquid:concrete> * 1296])
    .outputs(concrete)
    .duration(100)
    .EUt(8)
    .buildAndRegister();

recipes.addShaped(
  "crafttweaker_concrete_asphalt",
  <immersivepetroleum:stone_decoration> * 8,
  [
    [concrete, concrete, concrete],
    [
      concrete,
      <ore:coal> | <ore:charcoal> | <ore:dustCoal> | <ore:dustCharcoal> | <ore:dustCarbon> | <ore:dustGraphite>,
      concrete
    ],
    [concrete, concrete, concrete]
  ]
);

function colouredRecipe(
  name as string,
  output as IItemStack,
  dye as IIngredient
) {
  val concrete_block as IIngredient = <immersiveengineering:stone_decoration:5>;
  recipes.addShaped(
    "crafttweaker_concrete_" + name,
    output * 8,
    [
      [concrete_block, concrete_block, concrete_block],
      [concrete_block, dye, concrete_block],
      [concrete_block, concrete_block, concrete_block]
    ]
  );
}

colouredRecipe(
  "white",
  <minecraft:concrete:0>,
  <ore:dyeWhite>
);
colouredRecipe(
  "orange",
  <minecraft:concrete:1>,
  <ore:dyeOrange>
);
colouredRecipe(
  "magenta",
  <minecraft:concrete:2>,
  <ore:dyeMagenta>
);
colouredRecipe(
  "light_blue",
  <minecraft:concrete:3>,
  <ore:dyeLightBlue>
);
colouredRecipe(
  "yellow",
  <minecraft:concrete:4>,
  <ore:dyeYellow>
);
colouredRecipe(
  "lime",
  <minecraft:concrete:5>,
  <ore:dyeLime>
);
colouredRecipe(
  "pink",
  <minecraft:concrete:6>,
  <ore:dyePink>
);
colouredRecipe(
  "grey",
  <minecraft:concrete:7>,
  <ore:dyeGray>
);
colouredRecipe(
  "light_grey",
  <minecraft:concrete:8>,
  <ore:dyeLightGray>
);
colouredRecipe(
  "cyan",
  <minecraft:concrete:9>,
  <ore:dyeCyan>
);
colouredRecipe(
  "purple",
  <minecraft:concrete:10>,
  <ore:dyePurple>
);
colouredRecipe(
  "blue",
  <minecraft:concrete:11>,
  <ore:dyeBlue>
);
colouredRecipe(
  "brown",
  <minecraft:concrete:12>,
  <ore:dyeBrown>
);
colouredRecipe(
  "green",
  <minecraft:concrete:13>,
  <ore:dyeGreen>
);
colouredRecipe(
  "red",
  <minecraft:concrete:14>,
  <ore:dyeRed>
);
colouredRecipe(
  "black",
  <minecraft:concrete:15>,
  <ore:dyeBlack>
);
