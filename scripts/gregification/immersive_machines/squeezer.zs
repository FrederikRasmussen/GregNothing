#priority -1

import mods.gregtech.recipe.RecipeMap;
import mods.immersiveengineering.Squeezer;

Squeezer.removeAll();

val tier = 4.0;
// TODO: Implement tier boosting

val extractions = RecipeMap.getByName("extractor");

Squeezer.removeFluidRecipe(<liquid:seed_oil>);

for seed in <ore:listAllseed>.items {
  Squeezer.addRecipe(null, <liquid:seed_oil> * 10, seed, 64);
  extractions.recipeBuilder()
    .inputs(seed)
    .fluidOutputs(<liquid:seed_oil> * 10)
    .duration(32)
    .EUt(2)
    .buildAndRegister();
}
