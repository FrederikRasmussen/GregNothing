import mods.gregtech.recipe.Recipe;
import mods.gregtech.recipe.RecipeMap;
import mods.immersiveengineering.Refinery;

Refinery.removeAll();

val tier = 4.0;
// TODO: Implement tier boosting

val mixings = RecipeMap.getByName("mixer").recipes as Recipe[];

for mixing in mixings {
  val fluidInputs = mixing.fluidInputs;
  val itemOutputs = mixing.outputs;
  val inputItems = mixing.inputs;
  if (2 == fluidInputs.length & 0 == itemOutputs.length & 0 == inputItems.length) {
    val fluidInputA = fluidInputs[0];
    val fluidInputB = fluidInputs[1];
    val fluidOutput = mixing.fluidOutputs[0];
    val totalEnergy = mixing.duration * mixing.EUt;
    Refinery.addRecipe(
      fluidOutput,
      fluidInputA,
      fluidInputB,
      totalEnergy
    );
  }
}
