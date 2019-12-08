#priority -1

import mods.gregtech.recipe.Recipe;
import mods.gregtech.recipe.RecipeMap;
import mods.immersiveengineering.BottlingMachine;

BottlingMachine.removeAll();

val tier = 4.0;
// TODO: Implement tier boosting

val cannings = RecipeMap.getByName("fluid_canner").recipes as Recipe[];

for canning in cannings {
  val outputItem = canning.outputs[0];
  val inputLiquid = canning.fluidInputs[0];
  val totalEnergy = canning.duration * canning.EUt;
  for stack in canning.inputs[0].matchingItems {
    BottlingMachine.addRecipe(outputItem, stack * canning.inputs[0].amount, inputLiquid);
  }
}
