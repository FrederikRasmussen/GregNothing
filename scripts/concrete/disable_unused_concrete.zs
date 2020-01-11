import mods.jei.JEI;
import mods.gregtech.recipe.RecipeMap;

val macerator = RecipeMap.getByName("macerator");
val mixer = RecipeMap.getByName("mixer");
val fluid_extractor = RecipeMap.getByName("fluid_extractor");
val forge_hammer = RecipeMap.getByName("forge_hammer");

# Verify other removals first.
JEI.removeAndHide(<gregtech:concrete:*>);

furnace.remove(<gregtech:concrete:0>);
furnace.remove(<gregtech:concrete:5>);
furnace.remove(<gregtech:concrete:2>);
furnace.remove(<gregtech:concrete:7>);

macerator.findRecipe(8, [<gregtech:concrete:0>], null).remove();
mixer.findRecipe(4, [<gregtech:concrete:0>], [<liquid:water> * 144]).remove();
fluid_extractor.findRecipe(32, [<gregtech:concrete:0>], null).remove();
forge_hammer.findRecipe(4, [<gregtech:concrete:0>], null).remove();
mixer.findRecipe(4, [<gregtech:concrete:4>], [<liquid:water> * 144]).remove();
mixer.findRecipe(4, [<gregtech:concrete:1>], [<liquid:water> * 144]).remove();
forge_hammer.findRecipe(4, [<gregtech:concrete:2>], null).remove();
mixer.findRecipe(4, [<gregtech:concrete:6>], [<liquid:water> * 144]).remove();
mixer.findRecipe(4, [<gregtech:concrete:3>], [<liquid:water> * 144]).remove();
