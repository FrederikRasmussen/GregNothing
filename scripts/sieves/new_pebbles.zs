#modloaded minecraft gregtech
#loader contenttweaker
#priority 2

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.gregtech.material.MaterialRegistry;

val smeltableOreChunks as string[] = [
  "marble",
  "basalt",
  "granite_red",
  "granite_black"
] as string[];

function addChunk(materialName as string) {
  val chunk = VanillaFactory.createItem(materialName);
  chunk.setItemColorSupplier(
    function(itemStack, tintIndex) {
      return Color.fromInt(
        MaterialRegistry.get(
          itemStack.definition.id.split(":")[1]
        )
        .getColor()
      );
    }
  );
  chunk.setLocalizedNameSupplier(
    function(itemStack) {
      return MaterialRegistry.get(
        itemStack.definition.id.split(":")[1]
      )
      .localizedName + " Pebble";
    }
  );
  chunk.register();
}

for material in smeltableOreChunks {
  addChunk(material);
}