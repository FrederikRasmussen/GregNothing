import loottweaker.vanilla.loot.LootTables;

val fishingTable = LootTables.getTable("minecraft:gameplay/fishing");
val fishingPool = fishingTable.getPool("main");
fishingPool.removeEntry("minecraft:gameplay/fishing/treasure");

val fishingJunkTable = LootTables.getTable("minecraft:gameplay/fishing/junk");
val fishingJunk = fishingJunkTable.getPool("main");
fishingJunk.removeEntry("minecraft:leather");
fishingJunk.removeEntry("minecraft:bone");
fishingJunk.removeEntry("minecraft:potion");
fishingJunk.removeEntry("minecraft:string");
fishingJunk.removeEntry("minecraft:fishing_rod");
fishingJunk.removeEntry("minecraft:bowl");
fishingJunk.removeEntry("minecraft:stick");
fishingJunk.removeEntry("minecraft:dye");
fishingJunk.removeEntry("minecraft:tripwire_hook");
fishingJunk.removeEntry("minecraft:rotten_flesh");
