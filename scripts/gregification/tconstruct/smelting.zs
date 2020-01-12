import mods.gregtech.recipe.Recipe;
import mods.gregtech.recipe.RecipeMap;
import mods.tconstruct.Casting;

val solidifications = RecipeMap.getByName("fluid_solidifier").recipes as Recipe[];
for solidification in solidifications {
  if (solidification.EUt <= 32) {
    val mold = solidification.inputs[0].matchingItems[0];
    val output = solidification.outputs[0];
    val fluidInput = solidification.fluidInputs[0];
    val amount = fluidInput.amount;
    val duration = solidification.duration;
    if (<gregtech:meta_item_1:32308> has mold) {
      Casting.removeBasinRecipe(
        output,
        fluidInput
      );
      Casting.addBasinRecipe(
        output,
        null,
        fluidInput,
        amount,
        false,
        duration
      );
    } else if (<gregtech:meta_item_1:32309> has mold) {
      Casting.removeTableRecipe(
        output,
        fluidInput
      );
      Casting.addTableRecipe(
        output * 1,
        <tconstruct:cast_custom:1>,
        fluidInput,
        amount / 9,
        false,
        duration / 9
      );
    } else if (<gregtech:meta_item_1:32307> has mold) {
      Casting.removeTableRecipe(
        output,
        fluidInput
      );
      Casting.addTableRecipe(
        output,
        <tconstruct:cast_custom:2>,
        fluidInput,
        amount,
        false,
        duration
      );
    } else if (<gregtech:meta_item_1:32306> has mold) {
      Casting.removeTableRecipe(
        output,
        fluidInput
      );
      Casting.addTableRecipe(
        output,
        <tconstruct:cast_custom:0>,
        fluidInput,
        amount,
        false,
        duration
      );
    } else if (<gregtech:meta_item_1:32303> has mold) {
      Casting.removeTableRecipe(
        output,
        fluidInput
      );
      Casting.addTableRecipe(
        output,
        <tconstruct:cast_custom:4>,
        fluidInput,
        amount,
        false,
        duration
      );
    } else if (<gregtech:meta_item_1:32301> has mold) {
      Casting.removeTableRecipe(
        output,
        fluidInput
      );
      Casting.addTableRecipe(
        output,
        <tconstruct:cast_custom:3>,
        fluidInput,
        amount,
        false,
        duration
      );
    }
  } 
}
val mixings = RecipeMap.getByName("mixer").recipes as Recipe[];
