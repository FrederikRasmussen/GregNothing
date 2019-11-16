import mods.forestry.engine.biogas;

biogas.removeAll();

# LV
biogas.addRecipe(<liquid:milk>, 32, 400, 1);
biogas.addRecipe(<liquid:biomass>, 32, 4000, 1);
biogas.addRecipe(<liquid:fermented_biomass>, 32, 4000, 1);
biogas.addRecipe(<liquid:if.protein>, 32, 4000, 1);
// TODO: add juice recipes that function as roughly +100% compared to normal biomass conversion
// TODO: add protein recipes that function as roughly +200% compared to normal fruit / veggie conversion
//        - not counting protein from soy beans
// TODO: add all Pam's juices as liquids
// TODO: loop for adding all juices as equivalent to biomass.
# MV
// TODO: add recipes to ferment juices into wines, beers, and so on
// TODO: add recipe to 'spike' fermented juice with toluene for a speed boost
# HV
// TODO: add recipe to 'spike' fermented juice with tetranitromethane for a speed boost
# EV


// biogas.addRecipe(requiredLiquid, energyPerTick, burnDurationInTicksPerBucket, dissipationMultiplier)
