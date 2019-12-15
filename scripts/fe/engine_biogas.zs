import mods.forestry.engine.biogas;
import mods.jei.JEI;

JEI.addDescription(
  <forestry:engine_biogas>,
  "Biogas Engine",
  "Produces power when provided with select organic liquids. The FE per tick is determined by the liquid. One bucket lasts 4000 ticks.",
  "",
  "",
  "",
  "32FE/tick:",
  "  - Milk",
  "  - Biomass",
  "  - Liquid Protein",
  "  - Any Juice (not implemented)",
  "128FE/tick:",
  "  - Fermented Biomass",
  "  - Any Wine, Beer, Mead, or Ale (not implemented)",
  "512FE/tick: Fermented Biomass with Toluene (not implemented)",
  "2048FE/tick: Fermented Biomass with Tetranitromethane (not implemented)"
);

biogas.removeAll();

# LV
biogas.addRecipe(<liquid:milk>, 32, 400, 1);
biogas.addRecipe(<liquid:biomass>, 32, 4000, 1);
biogas.addRecipe(<liquid:if.protein>, 32, 4000, 1);
// TODO: add juice recipes that function as roughly +100% compared to normal biomass conversion
// TODO: add protein recipes that function as roughly +200% compared to normal fruit / veggie conversion
//        - not counting protein from soy beans
// TODO: add all Pam's juices as liquids
// TODO: loop for adding all juices as equivalent to biomass.
# MV
biogas.addRecipe(<liquid:fermented_biomass>, 128, 4000, 1);
// TODO: add recipes to ferment juices into wines, beers, and so on
// TODO: add recipe to 'spike' fermented juice with toluene for a speed boost
# HV
// TODO: add recipe to 'spike' fermented juice with tetranitromethane for a speed boost
# EV


// biogas.addRecipe(requiredLiquid, energyPerTick, burnDurationInTicksPerBucket, dissipationMultiplier)
