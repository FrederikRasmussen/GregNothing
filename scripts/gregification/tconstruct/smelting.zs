import mods.gregtech.recipe.Recipe;
import mods.gregtech.recipe.RecipeMap;
import mods.tconstruct.Melting;

val extractions = RecipeMap.getByName("fluid_extractor").recipes as Recipe[];
for extraction in extractions {
  if (extraction.EUt <= 32) {
    for input in extraction.inputs[0].matchingItems {
      val output = extraction.fluidOutputs[0];
      Melting.removeRecipe(output, input);
      Melting.addRecipe(output, input, extraction.EUt*31);
    }
  }
}
