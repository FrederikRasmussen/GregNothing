import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;

print("Adding GregTech ore chunks to ore dictionary");

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