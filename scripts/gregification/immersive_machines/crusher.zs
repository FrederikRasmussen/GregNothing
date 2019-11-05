#modloaded gregtech

// Pulverization recipes w/ byproduct 1 (+3 tiers), byproduct 2 is lost

import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.ChancedEntry;
import mods.gregtech.recipe.Recipe;
import mods.gregtech.recipe.RecipeMap;
import mods.immersiveengineering.Crusher;

val tier = 4.0;

val pulverizations = RecipeMap.getByName("macerator").recipes as Recipe[];

for pulverization in pulverizations {
  val outputItem = pulverization.outputs[0];
  val totalEnergy = pulverization.duration * pulverization.EUt * 4;
  var chance as double = 0.0;
  var chanceItem as IItemStack = <minecraft:bedrock>; // Unused block
  for entry in pulverization.changedOutputs {
    val baseChance as double = 1.0 * entry.chance;
    val boost as double = tier * entry.boostPerTier;
    chance = 0.0001 * (baseChance + boost);
    print("Adding chanced output");
    print(baseChance);
    print(boost);
    print(chance);
    chanceItem = entry.output;
    break;
  }
  for stack in pulverization.inputs[0].matchingItems {
    if (chance == 0.0) {
      Crusher.addRecipe(
        outputItem,
        stack,
        totalEnergy
      );
    } else {
      Crusher.addRecipe(
        outputItem,
        stack,
        totalEnergy,
        chanceItem,
        chance
      );
    }
  }
}
