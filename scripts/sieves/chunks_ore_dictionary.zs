#modloaded minecraft gregtech
#priority 1

import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;

print("Adding GregTech ore chunks to ore dictionary");

val smeltableOreChunks as string[] = [
  "tenorite",
  "bauxite",
  "aluminium",
  "ilmenite",
  "rutile",
  "copper",
  "cuprite",
  "chalcopyrite",
  "iron",
  "pyrite",
  "chalcocite",
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

for material_name in smeltableOreChunks {
  val components as string[] = material_name.split("_") as string[];
  for i, component in components {
    val firstLetter = component[0].toUpperCase();
    val restOfString = component.substring(1);
    if (i == 0) {
      components[0] = firstLetter~restOfString;
    } else {
      components[0] = components[0]~firstLetter~restOfString;
    }
  }
  val materialName = components[0];
  oreDict
      .get("ore"~materialName)
      .add(
        itemUtils.getItem("contenttweaker:"~material_name)
      );
}

print("Added ore chunks to ore dictionary");
