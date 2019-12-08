import mods.gregtech.recipe.RecipeMap;

val macerator = RecipeMap.getByName("macerator");
macerator.recipeBuilder()
  .inputs(<quark:reed_block> * 1)
  .outputs(<ore:dustPaper>.firstItem * 6)
  .duration(270)
  .EUt(8)
  .buildAndRegister();

val compressor = RecipeMap.getByName("compressor");
compressor.recipeBuilder()
  .inputs(<ore:dustPaper> * 3)
  .outputs(<ore:paper>.firstItem * 1)
  .duration(400)
  .EUt(2)
  .buildAndRegister();
