#loader contenttweaker
#priority 2

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.gregtech.material.MaterialRegistry;

print("Adding GregTech ore chunks");

val smeltableOreChunks as string[] = [
  "tenorite",
  "copper",
  "cuprite",
  "chalcopyrite",
  "iron",
  "pyrite",
  "bornite",
  "enargite",
  "brown_limonite",
  "yellow_limonite",
  "banded_iron",
  "malachite",
  "beryllium",
  "emerald",
  "thorium",
  "tin",
  "cassiterite",
  "magnetite",
  "vanadium_magnetite",
  "gold"
] as string[];

function addChunk(materialName as string) {
  val chunk = VanillaFactory.createItem(materialName);
  chunk.setItemColorSupplier(
    function(itemStack, tintIndex) {
      if (tintIndex == 1) {
        return Color.fromInt(
          MaterialRegistry.get(
            itemStack.definition.id.split(":")[1]
          )
          .getColor()
        );
      } else {
        return Color.fromHex("FFFFFF");
      }
    }
  );
  chunk.setLocalizedNameSupplier(
    function(itemStack) {
      return MaterialRegistry.get(
        itemStack.definition.id.split(":")[1]
      )
      .localizedName + " Ore Chunk";
    }
  );
  chunk.register();
}

for material in smeltableOreChunks {
  addChunk(material);
}

print("Added chunks for GregTech ores");