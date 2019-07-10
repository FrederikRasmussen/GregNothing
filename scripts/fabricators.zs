#modloaded minecraft gregtech
import mods.gregtech.material.MaterialRegistry;

import crafttweaker.item.IIngredient;

function addFabricator(
    ticks_required as int,    // Ticks per fabrication packet
    colour as int,            // Colour mask of the block (use 0xHEX_VALUE such as 0xDEDE00)
    block_count as int,       // Size of fabrication packet
    block_string as string,   // Block that is fabricated
    name as string,           // Name of this fabricator in JEI
    recipeName as string,     // Recipe name for Minecraft internals
    inputs as IIngredient[][] // Recipe array for the fabricator
) {
  val blockItem = <customblockfabricator:fabricator>.withTag(
    {
      BlockEntityTag: {
        ticks_required: ticks_required,
        colour: colour,
        block_count: block_count,
        counter: 0,
        block_string: block_string
      },
      display: {
        Name: name,
      }
    }
  );
  blockItem.addTooltip("Generates " + block_count + " blocks every " + ticks_required + " ticks.");
  mods.jei.JEI.addItem(blockItem);
  recipes.addShaped(recipeName, blockItem, inputs);
}

function addFabricatorSet(
  material as string,
  plate as IIngredient,
  ticks_required as int,
  block_count as string
) {
  addFabricator(
    ticks_required, MaterialRegistry.get(material).getColor(), block_count, "minecraft:cobblestone",
    MaterialRegistry.get(material).localizedName + " Plated Cobblestone Generator",
    "crafttweaker_customblockfabricator_" + material + "_cobblestone_generator",
    [
      [plate, plate, plate],
      [<minecraft:water_bucket>, <minecraft:cobblestone>, <minecraft:lava_bucket>],
      [plate, plate, plate]
    ]
  );
  addFabricator(
    ticks_required, MaterialRegistry.get(material).getColor(), block_count, "minecraft:stone:5",
    MaterialRegistry.get(material).localizedName + " Andesite Generator",
    "crafttweaker_customblockfabricator_" + material + "_andesite_generator",
    [
      [plate, plate, plate],
      [<minecraft:water_bucket>, <minecraft:stone:5>, <minecraft:lava_bucket>],
      [plate, plate, plate]
    ]
  );
  addFabricator(
    ticks_required, MaterialRegistry.get(material).getColor(), block_count, "minecraft:stone:3",
    MaterialRegistry.get(material).localizedName + " Diorite Generator",
    "crafttweaker_customblockfabricator_" + material + "_diorite_generator",
    [
      [plate, plate, plate],
      [<minecraft:water_bucket>, <minecraft:stone:3>, <minecraft:lava_bucket>],
      [plate, plate, plate]
    ]
  );
  addFabricator(
    ticks_required, MaterialRegistry.get(material).getColor(), block_count, "minecraft:stone:1",
    MaterialRegistry.get(material).localizedName + " Granite Generator",
    "crafttweaker_customblockfabricator_" + material + "_granite_generator",
    [
      [plate, plate, plate],
      [<minecraft:water_bucket>, <minecraft:stone:1>, <minecraft:lava_bucket>],
      [plate, plate, plate]
    ]
  );
}

addFabricatorSet(
  "wrought_iron",
  <ore:plateWroughtIron>,
  40,
  1
);

addFabricatorSet(
  "bronze",
  <ore:plateBronze>,
  40,
  2
);

addFabricatorSet(
  "steel",
  <ore:plateSteel>,
  40,
  4
);

addFabricatorSet(
  "aluminium",
  <ore:plateAluminium>,
  40,
  8
);

addFabricatorSet(
  "stainless_steel",
  <ore:plateStainlessSteel>,
  40,
  16
);

addFabricatorSet(
  "titanium",
  <ore:plateTitanium>,
  40,
  32
);

addFabricatorSet(
  "tungsten_steel",
  <ore:plateTungstenSteel>,
  40,
  64
);