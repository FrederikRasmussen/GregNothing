#modloaded minecraft gregtech
#loader contenttweaker
#priority 2

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.gregtech.material.MaterialRegistry;

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
  "tin",
  "cassiterite",
  "magnetite",
  "vanadium_magnetite",
  "gold",
  "apatite",
  "phosphor",
  "salt",
  "rock_salt",
  "lepidolite",
  "spodumene",
  "lignite",
  "coal",
  "quartzite",
  "barite",
  "certus_quartz",
  "tennantite",
  "tetrahedrite",
  "stibnite",
  "redstone",
  "ruby",
  "cinnabar",
  "chromite",
  "almandine",
  "pyrope",
  "sapphire",
  "green_sapphire",
  "garnierite",
  "nickel",
  "cobaltite",
  "pentlandite",
  "platinum",
  "palladium",
  "iridium",
  "graphite",
  "diamond",
  "grossular",
  "spessartine",
  "pyrolusite",
  "tantalite",
  "wulfenite",
  "molybdenite",
  "powellite",
  "scheelite",
  "tungstate",
  "lithium",
  "galena",
  "silver",
  "lead",
  "lazurite",
  "sodalite",
  "lapis",
  "calcite",
  "bentonite",
  "magnesite",
  "olivine",
  "glauconite",
  "bastnasite",
  "monazite",
  "neodymium",
  "beryllium",
  "emerald",
  "thorium",
  "soapstone",
  "talc",
  "pitchblende",
  "uraninite",
  "uranium"
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