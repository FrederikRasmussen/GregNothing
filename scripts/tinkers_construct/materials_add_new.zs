#modloaded minecraft tconstruct gregtech
#loader contenttweaker

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;

addMaterialSimple("aluminium", <liquid:aluminium>, 0x80C8F0, 128, 10.0, 2.0);
addMaterialSimple("chrome", <liquid:chrome>, 0xFFAAAB, 512, 12.0, 3.0);
addMaterialSimple("cobalt", <liquid:cobalt>, 0x2929BC, 256, 10.0, 3.0);
addMaterialSimple("iridium", <liquid:iridium>, 0xFFFFFF, 2560, 7.0, 3.0);
addMaterialSimple("iron", <liquid:iron>, 0xAAAAAA, 256, 7.0, 2.5);
addMaterialSimple("manganese", <liquid:manganese>, 0xEEEEEE, 512, 7.0, 2.0);
addMaterialSimple("molybdenum", <liquid:molybdenum>, 0xAAAADD, 512, 7.0, 2.0);
addMaterialSimple("neodymium", <liquid:neodymium>, 0x777777, 512, 7.0, 2.0);
addMaterialSimple("darmstadtium", <liquid:darmstadtium>, 0xAAAAAA, 155360, 24.0, 6.0);
addMaterialSimple("osmium", <liquid:osmium>, 0x5050FF, 1280, 16.0, 4.0);
addMaterialSimple("palladium", <liquid:palladium>, 0xCED0DD, 512, 8.0, 2.0);
addMaterialSimple("thorium", <liquid:thorium>, 0x001E00, 512, 6.0, 2.0);
addMaterialSimple("titanium", <liquid:titanium>, 0xDCA0F0, 1600, 7.0, 3.0);
addMaterialSimple("tungsten", <liquid:tungsten>, 0x323232, 2560, 7.0, 3.0);
addMaterialSimple("uranium", <liquid:uranium>, 0x32F032, 512, 6.0, 3.0);
addMaterialSimple("uranium235", <liquid:uranium235>, 0x46FA46, 512, 6.0, 3.0);
addMaterialSimple("blue_topaz", <liquid:blue_topaz>, 0x0000FF, 256, 7.0, 3.0); // TODO: Fix liquid
addMaterialSimple("brass", <liquid:brass>, 0xFFB400, 152, 8.0, 3.0);
addMaterialSimple("bronze", <liquid:bronze>, 0xFF8000, 192, 6.0, 2.5);
addMaterialSimple("diamond", <liquid:diamond>, 0xC8FFFF, 1280, 8.0, 3.0);
addMaterialSimple("emerald", <liquid:emerald>, 0x50FF50, 368, 10.0, 2.0);
addMaterialSimple("green_sapphire", <liquid:green_sapphire>, 0x64C882, 368, 8.0, 3.0); // TODO: Fix liquid
addMaterialSimple("invar", <liquid:invar>, 0xB4B478, 512, 7.0, 3.0);
addMaterialSimple("magnalium", <liquid:magnalium>, 0xC8BEFF, 256, 6.0, 2.0);
addMaterialSimple("pig_iron", <liquid:pig_iron>, 0xC8B4B4, 384, 6.0, 4.0);
addMaterialSimple("ruby", <liquid:ruby>, 0xBD4949, 256, 8.5, 3.0); // TODO: Fix liquid
addMaterialSimple("sapphire", <liquid:sapphire>, 0x6464C8, 256, 7.5, 4.0); // TODO: Fix liquid
addMaterialSimple("stainless_steel", <liquid:stainless_steel>, 0xC8C8DC, 480, 7.0, 4.0);
addMaterialSimple("steel", <liquid:steel>, 0x505050, 512, 6.0, 3.0);
addMaterialSimple("tanzanite", <liquid:tanzanite>, 0x4000C8, 256, 7.0, 2.0); // TODO: Fix liquid
addMaterialSimple("topaz", <liquid:topaz>, 0xFF8000, 256, 7.0, 2.0); // TODO: Fix liquid
addMaterialSimple("ultimet", <liquid:ultimet>, 0xB4B4E6, 2048, 9.0, 4.0);
addMaterialSimple("wrought_iron", <liquid:wrought_iron>, 0xC8B4B4, 384, 6.0, 3.5);
addMaterialSimple("osmiridium", <liquid:osmiridium>, 0x6464FF, 3152, 9.0, 3.0);
addMaterialSimple("olivine", <liquid:olivine>, 0x66FF66, 312, 7.5, 3.0); // TODO: Fix liquid
addMaterialSimple("opal", <liquid:opal>, 0x0000FF, 312, 7.5, 3.0); // TODO: Fix liquid
addMaterialSimple("amethyst", <liquid:amethyst>, 0xD232D2, 312, 7.5, 3.0); // TODO: Fix liquid
addMaterialSimple("sterling_silver", <liquid:sterling_silver>, 0xFADCE1, 196, 13.0, 2.0);
addMaterialSimple("rose_gold", <liquid:rose_gold>, 0xFFE61E, 152, 14.0, 2.0);
addMaterialSimple("black_bronze", <liquid:black_bronze>, 0x64327D, 256, 12.0, 2.0);
addMaterialSimple("bismuth_bronze", <liquid:bismuth_bronze>, 0x647D7D, 312, 7.5, 3.0);
addMaterialSimple("black_steel", <liquid:black_steel>, 0x646464, 768, 6.5, 6.5);
addMaterialSimple("red_steel", <liquid:red_steel>, 0x8C6464, 896, 7.0, 4.5);
addMaterialSimple("blue_steel", <liquid:blue_steel>, 0x64648C, 1024, 7.5, 5.0);
addMaterialSimple("damascus_steel", <liquid:damascus_steel>, 0x6E6E6E, 1280, 8.0, 5.0);
addMaterialSimple("tungsten_steel", <liquid:tungsten_steel>, 0x6464A0, 2560, 8.0, 4.0);
addMaterialSimple("cobalt_brass", <liquid:cobalt_brass>, 0xB4B4A0, 256, 8.0, 2.0);
addMaterialSimple("garnet_red", <liquid:garnet_red>, 0xC85050, 156, 7.5, 3.0); // TODO: Fix liquid
addMaterialSimple("garnet_yellow", <liquid:garnet_yellow>, 0xC8C850, 156, 7.5, 3.0); // TODO: Fix liquid
addMaterialSimple("vinteum", <liquid:vinteum>, 0x64C8FF, 128, 12.0, 3.0); // TODO: Fix liquid
addMaterialSimple("tungsten_carbide", <liquid:tungsten_carbide>, 0x330066, 1280, 12.0, 4.0);
addMaterialSimple("vanadium_magnetite", <liquid:vanadium_magnetite>, 0x23233C, 1920, 7.0, 3.0); // TODO: Fix liquid
addMaterialSimple("hssg", <liquid:hssg>, 0x999900, 4000, 10.0, 5.5);
addMaterialSimple("hsse", <liquid:hsse>, 0x336600, 5120, 10.0, 8.0);
addMaterialSimple("hsss", <liquid:hsss>, 0x336600, 3000, 15.0, 7.0);
addMaterialSimple("naquadah", <liquid:naquadah>, 0x323232, 1280, 6.0, 4.0);
addMaterialSimple("naquadah_alloy", <liquid:naquadah_alloy>, 0x282828, 5120, 8.0, 5.0);
addMaterialSimple("naquadah_enriched", <liquid:naquadah_enriched>, 0x282828, 1280, 6.0, 4.0);
addMaterialSimple("tritanium", <liquid:tritanium>, 0xFFFFFF, 10240, 20.0, 6.0);
addMaterialSimple("duranium", <liquid:duranium>, 0xFFFFFF, 5120, 16.0, 5.0);

val wood = MaterialBuilder.create("ct_"~"wood");
wood.color = 0x896727;
wood.craftable = true;
wood.addItem(<ore:plankWood>);
wood.representativeItem = <item:minecraft:log:0>;
wood.addHeadMaterialStats(((48 * 3) / 4) as int, 2.5, 2.0, 5);
wood.addHandleMaterialStats(1.125, ((48 * 1) / 8) as int);
wood.addExtraMaterialStats(((48 * 1) / 8) as int);
wood.register();

val rubber = MaterialBuilder.create("ct_"~"rubber");
rubber.color = 0x151515;
rubber.craftable = false;
rubber.castable = true;
rubber.addItem(<ore:ingotRubber>);
rubber.representativeItem = <ore:ingotRubber>.firstItem;
rubber.addHeadMaterialStats(((256 * 3) / 4) as int, 2.5, 2.0, 5);
rubber.addHandleMaterialStats(1.25, ((256 * 1) / 8) as int);
rubber.addExtraMaterialStats(((256 * 1) / 8) as int);
rubber.liquid = <liquid:rubber>;
rubber.register();

val plastic = MaterialBuilder.create("ct_"~"plastic");
plastic.color = 0xC8C8C8;
plastic.craftable = false;
plastic.castable = true;
plastic.addItem(<ore:ingotPlastic>);
plastic.representativeItem = <ore:ingotPlastic>.firstItem;
plastic.addHeadMaterialStats(((512 * 3) / 4) as int, 2.5, 3.0, 5);
plastic.addHandleMaterialStats(1.375, ((512 * 1) / 8) as int);
plastic.addExtraMaterialStats(((512 * 1) / 8) as int);
plastic.liquid = <liquid:plastic>;
plastic.register();

val polytetrafluoroethylene = MaterialBuilder.create("ct_"~"polytetrafluoroethylene");
polytetrafluoroethylene.color = 0x646464;
polytetrafluoroethylene.craftable = false;
polytetrafluoroethylene.castable = true;
polytetrafluoroethylene.addItem(<ore:ingotPolytetrafluoroethylene>);
polytetrafluoroethylene.representativeItem = <ore:ingotPolytetrafluoroethylene>.firstItem;
polytetrafluoroethylene.addHeadMaterialStats(((1024 * 3) / 4) as int, 2.5, 3.0, 5);
polytetrafluoroethylene.addHandleMaterialStats(1.5, ((1024 * 1) / 8) as int);
polytetrafluoroethylene.addExtraMaterialStats(((1024 * 1) / 8) as int);
polytetrafluoroethylene.liquid = <liquid:polytetrafluoroethylene>;
polytetrafluoroethylene.register();

val flint = MaterialBuilder.create("ct_"~"flint");
flint.color = 0x002040;
flint.craftable = true;
flint.addItem(<ore:gemFlint>);
flint.representativeItem = <ore:gemFlint>.firstItem;
flint.addHeadMaterialStats(((80 * 3) / 4) as int, 6.0, 6.0, 5);
flint.addHandleMaterialStats(1.0, ((80 * 2) / 8) as int);
flint.addExtraMaterialStats(((80 * 1) / 8) as int);
flint.register();

function addMaterial(
  materialName as string,
  liquid as ILiquidStack,
  colour as int,
  craftable as bool,
  ingredient as IIngredient,
  representativeItem as IItemStack,
  finalDurability as int,
  miningSpeed as float,
  weaponDamage as float,
  handleModifier as float
) {
  val material = MaterialBuilder.create("ct_"~materialName);
  material.color = colour;
  material.craftable = craftable;
  material.castable = true;
  material.addItem(ingredient);
  material.representativeItem = representativeItem;
  material.addHeadMaterialStats(((finalDurability * 3) / 4) as int, miningSpeed, weaponDamage, 5);
  material.addHandleMaterialStats(handleModifier, ((finalDurability * 1) / 8) as int);
  material.addExtraMaterialStats(((finalDurability * 1) / 8) as int);
  material.liquid = liquid;
  material.register();
}

function addMaterialSimple(
  material_name as string,
  liquid as ILiquidStack,
  colour as int,
  finalDurability as int,
  miningSpeed as float,
  weaponDamage as float
) {
  // Converts from snake_case to UpperCamelCase
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
  addMaterial(
    material_name,
    liquid,
    colour,
    false,
    oreDict.get("ingot"~materialName),
    oreDict.get("ingot"~materialName).firstItem,
    finalDurability,
    miningSpeed,
    weaponDamage,
    1.0
  );
}
