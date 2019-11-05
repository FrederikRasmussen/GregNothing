import mods.gregtech.recipe.Recipe;
import mods.gregtech.recipe.RecipeMap;
import mods.immersiveengineering.Fermenter;

Fermenter.removeAll();

val tier = 4.0;
// TODO: Implement tier boosting

val brewings = RecipeMap.getByName("brewer").recipes as Recipe[];

for brewing in brewings {
  val inputLiquid = brewing.fluidInputs[0];
  if ("water" == inputLiquid.name)
  {
    val outputLiquid = brewing.fluidOutputs[0];
    val totalEnergy = brewing.duration * brewing.EUt;
    for stack in brewing.inputs[0].matchingItems {
      Fermenter.addRecipe(null, outputLiquid, stack * brewing.inputs[0].amount, totalEnergy);
    }
  }
}
