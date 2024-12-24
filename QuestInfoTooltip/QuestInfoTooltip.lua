QuestInfoTooltip = {}
local QIT = QuestInfoTooltip
local itemIdQuestMap = {
    [159] = { quests = { { id = 16, name = "Give Gerard a Drink", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [723] = { quests = { { id = 22, name = "Goretusk Liver Pie", amountNeeded = 8, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [729] = { quests = { { id = 38, name = "Westfall Stew", amountNeeded = 3, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [730] = { quests = { { id = 38, name = "Westfall Stew", amountNeeded = 3, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [731] = { quests = { { id = 38, name = "Westfall Stew", amountNeeded = 3, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [732] = { quests = { { id = 38, name = "Westfall Stew", amountNeeded = 3, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [769] = { quests = { { id = 86, name = "Pie for Billy", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 317, name = "Stocking Jetsteam", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [814] = { quests = { { id = 103, name = "Keeper of the Flame", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [929] = { quests = { { id = 715, name = "Liquid Stone", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [1015] = { quests = { { id = 90, name = "Seasoned Wolf Kabobs", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [1080] = { quests = { { id = 92, name = "Redridge Goulash", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [1081] = { quests = { { id = 92, name = "Redridge Goulash", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [1179] = { quests = { { id = 6962, name = "Treats for Great-father Winter", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7025, name = "Treats for Greatfather Winter", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [1206] = { quests = { { id = 2948, name = "Gnome Improvement", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2950, name = "Nogg's Ring Redo", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 80131, name = "Gnome Improvement", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 80141, name = "Nogg's Ring Redo", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [1251] = { quests = { { id = 8517, name = "The Alliance Needs Linen Bandages!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8518, name = "The Alliance Needs More Linen Bandages!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [1262] = { quests = { { id = 116, name = "Dry Times", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [1274] = { quests = { { id = 117, name = "Thunderbrew", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [1468] = { quests = { { id = 150, name = "Murloc Poachers", amountNeeded = 8, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [1529] = { quests = { { id = 1948, name = "Items of Power", amountNeeded = 1, races = {}, factions = {}, classes = { "Mage" }, }, } },
    [1708] = { quests = { { id = 3375, name = "Replacement Phial", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [1939] = { quests = { { id = 116, name = "Dry Times", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [1941] = { quests = { { id = 116, name = "Dry Times", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [1942] = { quests = { { id = 116, name = "Dry Times", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2070] = { quests = {} },
    [2251] = { quests = { { id = 93, name = "Dusky Crab Cakes", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2296] = { quests = { { id = 92, name = "Redridge Goulash", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2309] = { quests = { { id = 1582, name = "Moonglow Vest", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7881, name = "Carnival Boots", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 79595, name = "Carnival Boots", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, } },
    [2310] = { quests = { { id = 1582, name = "Moonglow Vest", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2314] = { quests = { { id = 7882, name = "Carnival Jerkins", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 79592, name = "Carnival Jerkins", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, } },
    [2318] = { quests = { { id = 768, name = "Gathering Leather", amountNeeded = 12, races = {}, factions = { "Horde" }, classes = {}, }, { id = 769, name = "Kodo Hide Bag", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8511, name = "The Alliance Needs Light Leather!", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8512, name = "The Alliance Needs More Light Leather!", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2319] = { quests = { { id = 8513, name = "The Alliance Needs Medium Leather!", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8514, name = "The Alliance Needs More Medium Leather!", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2320] = { quests = { { id = 375, name = "The Chill of Death", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 769, name = "Kodo Hide Bag", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [2321] = { quests = { { id = 565, name = "Bartolo's Yeti Fur Cloak", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2447] = { quests = { { id = 8549, name = "The Horde Needs Peacebloom!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8550, name = "The Horde Needs More Peacebloom!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [2449] = { quests = { { id = 6123, name = "Gathering the Cure", amountNeeded = 5, races = { "Night Elf" }, factions = { "Alliance" }, classes = { "Druid" }, }, { id = 6128, name = "Gathering the Cure", amountNeeded = 5, races = { "Tauren" }, factions = { "Horde" }, classes = { "Druid" }, }, } },
    [2454] = { quests = { { id = 1581, name = "Elixirs for the Bladeleafs", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2455] = { quests = { { id = 1073, name = "Ineptitude + Chemicals = Fun", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2458] = { quests = { { id = 1073, name = "Ineptitude + Chemicals = Fun", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2589] = { quests = { { id = 1644, name = "The Tome of Divinity", amountNeeded = 10, races = { "Human" }, factions = { "Alliance" }, classes = { "Paladin" }, }, { id = 1648, name = "The Tome of Divinity", amountNeeded = 10, races = { "Dwarf" }, factions = { "Alliance" }, classes = { "Paladin" }, }, { id = 1921, name = "Gathering Materials", amountNeeded = 10, races = { "Gnome", "Human" }, factions = { "Alliance" }, classes = { "Mage" }, }, { id = 1961, name = "Gathering Materials", amountNeeded = 10, races = { "Troll", "Undead" }, factions = { "Horde" }, classes = { "Mage" }, }, { id = 9267, name = "Mending Old Wounds", amountNeeded = 40, races = {}, factions = {}, classes = {}, }, } },
    [2592] = { quests = { { id = 7791, name = "A Donation of Wool", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7792, name = "A Donation of Wool", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7802, name = "A Donation of Wool", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7807, name = "A Donation of Wool", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7813, name = "A Donation of Wool", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7820, name = "A Donation of Wool", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7826, name = "A Donation of Wool", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7833, name = "A Donation of Wool", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [2594] = { quests = { { id = 288, name = "The Third Fleet", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2604] = { quests = { { id = 9259, name = "Traitor to the Bloodsail", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [2633] = { quests = { { id = 204, name = "Bad Medicine", amountNeeded = 7, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2665] = { quests = { { id = 90, name = "Seasoned Wolf Kabobs", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2686] = { quests = { { id = 308, name = "Distracting Jarven", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2688] = { quests = {} },
    [2725] = { quests = { { id = 339, name = "Chapter I", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2728] = { quests = { { id = 339, name = "Chapter I", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2730] = { quests = { { id = 339, name = "Chapter I", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2732] = { quests = { { id = 339, name = "Chapter I", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2734] = { quests = { { id = 340, name = "Chapter II", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2735] = { quests = { { id = 340, name = "Chapter II", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2738] = { quests = { { id = 340, name = "Chapter II", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2740] = { quests = { { id = 340, name = "Chapter II", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2742] = { quests = { { id = 341, name = "Chapter III", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2744] = { quests = { { id = 341, name = "Chapter III", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2745] = { quests = { { id = 341, name = "Chapter III", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2748] = { quests = { { id = 341, name = "Chapter III", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2749] = { quests = { { id = 342, name = "Chapter IV", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2750] = { quests = { { id = 342, name = "Chapter IV", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2751] = { quests = { { id = 342, name = "Chapter IV", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2798] = { quests = { { id = 347, name = "Rethban Ore", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2799] = { quests = { { id = 349, name = "Stranglethorn Fever", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [2840] = { quests = { { id = 8492, name = "The Alliance Needs Copper Bars!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8493, name = "The Alliance Needs More Copper Bars!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8532, name = "The Horde Needs Copper Bars!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8533, name = "The Horde Needs More Copper Bars!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [2842] = { quests = { { id = 2199, name = "Lore for a Price", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2948, name = "Gnome Improvement", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2950, name = "Nogg's Ring Redo", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 80131, name = "Gnome Improvement", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 80141, name = "Nogg's Ring Redo", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [2845] = { quests = { { id = 1578, name = "Supplying the Front", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = { "Paladin", "Rogue", "Warrior" }, }, } },
    [2851] = { quests = { { id = 1578, name = "Supplying the Front", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = { "Paladin", "Rogue", "Warrior" }, }, } },
    [2857] = { quests = { { id = 1618, name = "Gearing Redridge", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = { "Paladin", "Rogue", "Warrior" }, }, } },
    [2868] = { quests = { { id = 716, name = "Stone Is Better than Cloth", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 2751, name = "Barbaric Battlements", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [2886] = { quests = { { id = 384, name = "Beer Basted Boar Ribs", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2894] = { quests = { { id = 384, name = "Beer Basted Boar Ribs", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2924] = { quests = { { id = 385, name = "Crocolisk Hunting", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [2997] = { quests = { { id = 565, name = "Bartolo's Yeti Fur Cloak", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [3164] = { quests = { { id = 429, name = "Wild Hearts", amountNeeded = 6, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [3172] = { quests = { { id = 418, name = "Thelsamar Blood Sausages", amountNeeded = 3, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [3173] = { quests = { { id = 418, name = "Thelsamar Blood Sausages", amountNeeded = 3, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [3174] = { quests = { { id = 418, name = "Thelsamar Blood Sausages", amountNeeded = 3, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [3240] = { quests = { { id = 7889, name = "Coarse Weightstone", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, { id = 79593, name = "Coarse Weightstone", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [3340] = { quests = { { id = 466, name = "Search for Incendicite", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [3356] = { quests = { { id = 7736, name = "Restoring Fiery Flux Supplies via Kingsblood", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [3357] = { quests = { { id = 1712, name = "Cyclonian", amountNeeded = 8, races = {}, factions = {}, classes = { "Warrior" }, }, } },
    [3371] = { quests = { { id = 9267, name = "Mending Old Wounds", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [3372] = { quests = { { id = 2609, name = "The Touch of Zanzil", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Rogue" }, }, } },
    [3383] = { quests = { { id = 78537, name = "Elixir of Insight", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [3388] = { quests = { { id = 515, name = "Elixir of Agony", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [3404] = { quests = { { id = 703, name = "Barbecued Buzzard Wings", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [3421] = { quests = { { id = 2609, name = "The Touch of Zanzil", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Rogue" }, }, } },
    [3466] = { quests = { { id = 9268, name = "War at Sea", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [3482] = { quests = { { id = 2754, name = "Horns of Frenzy", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = { "Hunter", "Warrior" }, }, } },
    [3483] = { quests = { { id = 2754, name = "Horns of Frenzy", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = { "Hunter", "Warrior" }, }, } },
    [3486] = { quests = { { id = 7890, name = "Heavy Grinding Stone", amountNeeded = 7, races = {}, factions = {}, classes = {}, }, { id = 8541, name = "Grinding Stones for the Guard", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8806, name = "Grinding Stones for the Guard", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, { id = 79590, name = "Heavy Grinding Stone", amountNeeded = 7, races = {}, factions = {}, classes = {}, }, } },
    [3530] = { quests = { { id = 8604, name = "The Horde Needs Wool Bandages!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8605, name = "The Horde Needs More Wool Bandages!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [3575] = { quests = { { id = 1838, name = "Brutal Armor", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = { "Warrior" }, }, { id = 2761, name = "Smelt On, Smelt Off", amountNeeded = 40, races = {}, factions = {}, classes = { "Hunter", "Paladin", "Warrior" }, }, { id = 6861, name = "Zinfizzlex's Portable Shredder Unit", amountNeeded = 75, races = {}, factions = {}, classes = {}, }, { id = 6862, name = "Zinfizzlex's Portable Shredder Unit", amountNeeded = 75, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8241, name = "Restoring Fiery Flux Supplies via Iron", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 8494, name = "The Alliance Needs Iron Bars!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8495, name = "The Alliance Needs More Iron Bars!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [3576] = { quests = { { id = 8542, name = "The Horde Needs Tin Bars!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8543, name = "The Horde Needs More Tin Bars!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [3577] = { quests = { { id = 4083, name = "The Spectral Chalice", amountNeeded = 20, races = {}, factions = {}, classes = {}, }, { id = 4781, name = "Components for the Enchanted Gold Bloodrobe", amountNeeded = 1, races = {}, factions = {}, classes = { "Warlock" }, }, } },
    [3703] = { quests = { { id = 535, name = "Valik", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [3712] = { quests = { { id = 555, name = "Soothing Turtle Bisque", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7321, name = "Soothing Turtle Bisque", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [3713] = { quests = { { id = 555, name = "Soothing Turtle Bisque", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 1218, name = "Soothing Spices", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 7321, name = "Soothing Turtle Bisque", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [3719] = { quests = { { id = 565, name = "Bartolo's Yeti Fur Cloak", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [3820] = { quests = { { id = 8503, name = "The Alliance Needs Stranglekelp!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8504, name = "The Alliance Needs More Stranglekelp!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [3823] = { quests = { { id = 715, name = "Liquid Stone", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [3825] = { quests = { { id = 3842, name = "A Short Incubation", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [3827] = { quests = { { id = 3375, name = "Replacement Phial", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [3829] = { quests = { { id = 713, name = "Coolant Heads Prevail", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 1193, name = "A Broken Trap", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [3835] = { quests = { { id = 2753, name = "Trampled Under Foot", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7891, name = "Green Iron Bracers", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 80421, name = "Green Iron Bracers", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, } },
    [3836] = { quests = { { id = 2753, name = "Trampled Under Foot", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [3842] = { quests = { { id = 2753, name = "Trampled Under Foot", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [3851] = { quests = { { id = 2754, name = "Horns of Frenzy", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = { "Hunter", "Warrior" }, }, } },
    [3853] = { quests = { { id = 1203, name = "Jarl Needs a Blade", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 5284, name = "The Way of the Weaponsmith", amountNeeded = 4, races = { "Dwarf", "Human", "Night Elf" }, factions = { "Alliance" }, classes = {}, }, { id = 5302, name = "The Way of the Weaponsmith", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = { "Rogue", "Shaman", "Warrior" }, }, { id = 8781, name = "Arms for the Field", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [3855] = { quests = { { id = 5284, name = "The Way of the Weaponsmith", amountNeeded = 4, races = { "Dwarf", "Human", "Night Elf" }, factions = { "Alliance" }, classes = {}, }, { id = 5302, name = "The Way of the Weaponsmith", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = { "Rogue", "Shaman", "Warrior" }, }, { id = 8786, name = "Arms for the Field", amountNeeded = 3, races = {}, factions = { "Horde" }, classes = {}, }, { id = 82662, name = "The Way of the Weaponsmith", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 82665, name = "The Way of the Weaponsmith", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [3857] = { quests = { { id = 3375, name = "Replacement Phial", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7736, name = "Restoring Fiery Flux Supplies via Kingsblood", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 8241, name = "Restoring Fiery Flux Supplies via Iron", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 8242, name = "Restoring Fiery Flux Supplies via Heavy Leather", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9266, name = "Making Amends", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [3860] = { quests = { { id = 2761, name = "Smelt On, Smelt Off", amountNeeded = 40, races = {}, factions = {}, classes = { "Hunter", "Paladin", "Warrior" }, }, { id = 2762, name = "The Great Silver Deceiver", amountNeeded = 40, races = {}, factions = {}, classes = { "Paladin", "Warrior" }, }, { id = 2763, name = "The Art of the Imbue", amountNeeded = 40, races = {}, factions = {}, classes = {}, }, { id = 6861, name = "Zinfizzlex's Portable Shredder Unit", amountNeeded = 50, races = {}, factions = {}, classes = {}, }, { id = 6862, name = "Zinfizzlex's Portable Shredder Unit", amountNeeded = 50, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8545, name = "The Horde Needs Mithril Bars!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8546, name = "The Horde Needs More Mithril Bars!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 79705, name = "Salvaging the Salvagematic", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [3864] = { quests = { { id = 2763, name = "The Art of the Imbue", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [4234] = { quests = { { id = 8242, name = "Restoring Fiery Flux Supplies via Heavy Leather", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 8588, name = "The Horde Needs Heavy Leather!", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8589, name = "The Horde Needs More Heavy Leather!", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [4239] = { quests = { { id = 1582, name = "Moonglow Vest", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [4265] = { quests = { { id = 8780, name = "Armor Kits for the Field", amountNeeded = 8, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8787, name = "Armor Kits for the Field", amountNeeded = 8, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [4278] = { quests = { { id = 627, name = "Favor for Krazek", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [4304] = { quests = { { id = 2847, name = "Wild Leather Armor", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2854, name = "Wild Leather Armor", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8515, name = "The Alliance Needs Thick Leather!", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8516, name = "The Alliance Needs More Thick Leather!", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8590, name = "The Horde Needs Thick Leather!", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8591, name = "The Horde Needs More Thick Leather!", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [4306] = { quests = { { id = 2746, name = "Items of Some Consequence", amountNeeded = 3, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 4449, name = "Caught!", amountNeeded = 15, races = {}, factions = {}, classes = {}, }, { id = 7793, name = "A Donation of Silk", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7798, name = "A Donation of Silk", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7803, name = "A Donation of Silk", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7808, name = "A Donation of Silk", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7814, name = "A Donation of Silk", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7821, name = "A Donation of Silk", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7827, name = "A Donation of Silk", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7834, name = "A Donation of Silk", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9259, name = "Traitor to the Bloodsail", amountNeeded = 40, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [4338] = { quests = { { id = 7794, name = "A Donation of Mageweave", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7799, name = "A Donation of Mageweave", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7804, name = "A Donation of Mageweave", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7809, name = "A Donation of Mageweave", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7817, name = "A Donation of Mageweave", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7822, name = "A Donation of Mageweave", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7831, name = "A Donation of Mageweave", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7835, name = "A Donation of Mageweave", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9268, name = "War at Sea", amountNeeded = 40, races = {}, factions = {}, classes = {}, }, } },
    [4363] = { quests = { { id = 7894, name = "Copper Modulator", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 79594, name = "Copper Modulator", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [4369] = { quests = { { id = 6581, name = "Warsong Saw Blades", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [4371] = { quests = { { id = 174, name = "Look To The Stars", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2609, name = "The Touch of Zanzil", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Rogue" }, }, } },
    [4375] = { quests = { { id = 7895, name = "Whirring Bronze Gizmo", amountNeeded = 7, races = {}, factions = {}, classes = {}, }, { id = 79591, name = "Whirring Bronze Gizmo", amountNeeded = 7, races = {}, factions = {}, classes = {}, }, } },
    [4384] = { quests = { { id = 3639, name = "Show Your Work", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [4389] = { quests = { { id = 714, name = "Gyro... What?", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [4392] = { quests = { { id = 1371, name = "Gizmo for Warug", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 3641, name = "Show Your Work", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 3643, name = "Show Your Work", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [4394] = { quests = { { id = 3639, name = "Show Your Work", amountNeeded = 20, races = {}, factions = {}, classes = {}, }, } },
    [4395] = { quests = { { id = 81987, name = "Goblin Solutions", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [4407] = { quests = { { id = 3641, name = "Show Your Work", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 3643, name = "Show Your Work", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [4457] = { quests = { { id = 619, name = "Enticing Negolash", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [4470] = { quests = { { id = 80001, name = "Rekindle", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [4471] = { quests = { { id = 80001, name = "Rekindle", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [4479] = { quests = { { id = 1714, name = "Essence of the Exile", amountNeeded = 8, races = {}, factions = {}, classes = { "Warrior" }, }, } },
    [4480] = { quests = { { id = 1714, name = "Essence of the Exile", amountNeeded = 8, races = {}, factions = {}, classes = { "Warrior" }, }, } },
    [4481] = { quests = { { id = 1714, name = "Essence of the Exile", amountNeeded = 8, races = {}, factions = {}, classes = { "Warrior" }, }, } },
    [4582] = { quests = { { id = 7901, name = "Soft Bushy Tails", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 80417, name = "Soft Bushy Tails", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [4589] = { quests = { { id = 7842, name = "Another Message to the Wildhammer", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [4595] = { quests = { { id = 619, name = "Enticing Negolash", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [4600] = { quests = { { id = 79236, name = "Cherry for Your Thoughts?", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [4611] = { quests = { { id = 705, name = "Pearl Diving", amountNeeded = 9, races = {}, factions = {}, classes = {}, }, } },
    [4616] = { quests = { { id = 719, name = "A Dwarf and His Tools", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [4625] = { quests = { { id = 8580, name = "The Horde Needs Firebloom!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8581, name = "The Horde Needs More Firebloom!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [5051] = { quests = { { id = 862, name = "Dig Rat Stew", amountNeeded = 8, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [5075] = { quests = { { id = 889, name = "Spirit of the Wind", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, { id = 5042, name = "Agamaggan's Strength", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 5043, name = "Agamaggan's Agility", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 5044, name = "Wisdom of Agamaggan", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 5045, name = "Rising Spirit", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 5046, name = "Razorhide", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 5052, name = "Blood Shards of Agamaggan", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [5092] = { quests = { { id = 893, name = "Weapons of Choice", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [5093] = { quests = { { id = 893, name = "Weapons of Choice", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [5094] = { quests = { { id = 893, name = "Weapons of Choice", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [5095] = { quests = { { id = 8524, name = "The Alliance Needs Rainbow Fin Albacore!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8525, name = "The Alliance Needs More Rainbow Fin Albacore!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [5117] = { quests = { { id = 7902, name = "Vibrant Plumes", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 82323, name = "Vibrant Plumes", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [5134] = { quests = { { id = 7899, name = "Small Furry Paws", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 79588, name = "Small Furry Paws", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [5465] = { quests = { { id = 4161, name = "Recipe of the Kaldorei", amountNeeded = 7, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [5469] = { quests = { { id = 2178, name = "Easy Strider Living", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [5635] = { quests = { { id = 2751, name = "Barbaric Battlements", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [5739] = { quests = { { id = 7883, name = "The World's Largest Gnome!", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 80423, name = "The World's Largest Gnome!", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, } },
    [5768] = { quests = { { id = 1174, name = "Gnomes Win!", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [5769] = { quests = { { id = 1099, name = "Goblins Win!", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [5770] = { quests = { { id = 1796, name = "Components for the Enchanted Gold Bloodrobe", amountNeeded = 1, races = {}, factions = {}, classes = { "Warlock" }, }, } },
    [5996] = { quests = { { id = 78537, name = "Elixir of Insight", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [5997] = { quests = { { id = 1581, name = "Elixirs for the Bladeleafs", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [6037] = { quests = { { id = 50, name = "Sweet Amber", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2762, name = "The Great Silver Deceiver", amountNeeded = 5, races = {}, factions = {}, classes = { "Paladin", "Warrior" }, }, { id = 4083, name = "The Spectral Chalice", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [6040] = { quests = { { id = 2758, name = "The Origins of Smithing", amountNeeded = 6, races = { "Dwarf", "Human", "Night Elf" }, factions = { "Alliance" }, classes = { "Paladin", "Warrior" }, }, { id = 80241, name = "The Origins of Smithing", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, } },
    [6214] = { quests = { { id = 1618, name = "Gearing Redridge", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = { "Paladin", "Rogue", "Warrior" }, }, } },
    [6450] = { quests = { { id = 8520, name = "The Alliance Needs Silk Bandages!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8521, name = "The Alliance Needs More Silk Bandages!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [6451] = { quests = { { id = 8496, name = "Bandages for the Field", amountNeeded = 30, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8810, name = "Bandages for the Field", amountNeeded = 30, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [6887] = { quests = { { id = 8528, name = "The Alliance Needs Spotted Yellowtail!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8529, name = "The Alliance Needs More Spotted Yellowtail!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8613, name = "The Horde Needs Spotted Yellowtail!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8614, name = "The Horde Needs More Spotted Yellowtail!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [7067] = { quests = { { id = 8410, name = "Elemental Mastery", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Shaman" }, }, { id = 8411, name = "Mastering the Elements", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Shaman" }, }, } },
    [7068] = { quests = { { id = 8410, name = "Elemental Mastery", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Shaman" }, }, { id = 8411, name = "Mastering the Elements", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Shaman" }, }, } },
    [7069] = { quests = { { id = 8410, name = "Elemental Mastery", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Shaman" }, }, { id = 8411, name = "Mastering the Elements", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Shaman" }, }, } },
    [7070] = { quests = { { id = 8410, name = "Elemental Mastery", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Shaman" }, }, { id = 8411, name = "Mastering the Elements", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Shaman" }, }, } },
    [7075] = { quests = { { id = 5144, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 5146, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 85703, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 85704, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [7077] = { quests = { { id = 5144, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 5146, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 85703, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 85704, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [7078] = { quests = { { id = 5124, name = "Fiery Plate Gauntlets", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 84495, name = "Fiery Plate Gauntlets", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [7079] = { quests = { { id = 5144, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 5146, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8497, name = "Desert Survival Kits", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8804, name = "Desert Survival Kits", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8856, name = "Desert Survival Kits", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 85703, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 85704, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [7080] = { quests = { { id = 9232, name = "The Only Song I Know...", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9234, name = "Icebane Gauntlets", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9235, name = "Icebane Bracers", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9236, name = "Icebane Breastplate", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9237, name = "Glacial Cloak", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9238, name = "Glacial Wrists", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9239, name = "Glacial Gloves", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9240, name = "Glacial Vest", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9241, name = "Polar Bracers", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9242, name = "Polar Gloves", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9243, name = "Polar Tunic", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9244, name = "Icy Scale Bracers", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9245, name = "Icy Scale Gauntlets", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9246, name = "Icy Scale Breastplate", amountNeeded = 7, races = {}, factions = {}, classes = {}, }, } },
    [7081] = { quests = { { id = 5144, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 5146, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 85703, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 85704, name = "Elemental Leatherworking", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [7228] = { quests = { { id = 915, name = "You Scream, I Scream...", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 4822, name = "You Scream, I Scream...", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [7910] = { quests = { { id = 4083, name = "The Spectral Chalice", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 5124, name = "Fiery Plate Gauntlets", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 84495, name = "Fiery Plate Gauntlets", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [7922] = { quests = { { id = 2756, name = "The Old Ways", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = { "Druid", "Shaman", "Warrior" }, }, } },
    [7926] = { quests = { { id = 2772, name = "The World At Your Feet", amountNeeded = 1, races = {}, factions = {}, classes = { "Hunter", "Paladin", "Warrior" }, }, } },
    [7927] = { quests = { { id = 2773, name = "The Mithril Kid", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [7928] = { quests = { { id = 2771, name = "A Good Head On Your Shoulders", amountNeeded = 1, races = {}, factions = {}, classes = { "Paladin", "Warrior" }, }, } },
    [7930] = { quests = { { id = 2773, name = "The Mithril Kid", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [7931] = { quests = { { id = 2771, name = "A Good Head On Your Shoulders", amountNeeded = 2, races = {}, factions = {}, classes = { "Paladin", "Warrior" }, }, } },
    [7933] = { quests = { { id = 2772, name = "The World At Your Feet", amountNeeded = 2, races = {}, factions = {}, classes = { "Hunter", "Paladin", "Warrior" }, }, } },
    [7935] = { quests = { { id = 5283, name = "The Art of the Armorsmith", amountNeeded = 1, races = { "Dwarf", "Human", "Night Elf" }, factions = { "Alliance" }, classes = { "Paladin", "Warrior" }, }, { id = 5301, name = "The Art of the Armorsmith", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Warrior" }, }, { id = 85712, name = "The Art of the Armorsmith", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 85713, name = "The Art of the Armorsmith", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [7936] = { quests = { { id = 5283, name = "The Art of the Armorsmith", amountNeeded = 2, races = { "Dwarf", "Human", "Night Elf" }, factions = { "Alliance" }, classes = { "Paladin", "Warrior" }, }, { id = 5301, name = "The Art of the Armorsmith", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = { "Warrior" }, }, { id = 8540, name = "Boots for the Guard", amountNeeded = 3, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8805, name = "Boots for the Guard", amountNeeded = 3, races = {}, factions = { "Horde" }, classes = {}, }, { id = 85712, name = "The Art of the Armorsmith", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 85713, name = "The Art of the Armorsmith", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [7937] = { quests = { { id = 5283, name = "The Art of the Armorsmith", amountNeeded = 4, races = { "Dwarf", "Human", "Night Elf" }, factions = { "Alliance" }, classes = { "Paladin", "Warrior" }, }, { id = 5301, name = "The Art of the Armorsmith", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = { "Warrior" }, }, { id = 85712, name = "The Art of the Armorsmith", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 85713, name = "The Art of the Armorsmith", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [7941] = { quests = { { id = 5284, name = "The Way of the Weaponsmith", amountNeeded = 2, races = { "Dwarf", "Human", "Night Elf" }, factions = { "Alliance" }, classes = {}, }, { id = 5302, name = "The Way of the Weaponsmith", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = { "Rogue", "Shaman", "Warrior" }, }, { id = 82662, name = "The Way of the Weaponsmith", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 82665, name = "The Way of the Weaponsmith", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [7945] = { quests = { { id = 5284, name = "The Way of the Weaponsmith", amountNeeded = 2, races = { "Dwarf", "Human", "Night Elf" }, factions = { "Alliance" }, classes = {}, }, { id = 5302, name = "The Way of the Weaponsmith", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = { "Rogue", "Shaman", "Warrior" }, }, { id = 7892, name = "Big Black Mace", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 82275, name = "Big Black Mace", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 82662, name = "The Way of the Weaponsmith", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 82665, name = "The Way of the Weaponsmith", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [7956] = { quests = { { id = 2752, name = "On Iron Pauldrons", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = { "Hunter", "Warrior" }, }, } },
    [7957] = { quests = { { id = 2751, name = "Barbaric Battlements", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [7958] = { quests = { { id = 2752, name = "On Iron Pauldrons", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = { "Hunter", "Warrior" }, }, } },
    [7963] = { quests = { { id = 2756, name = "The Old Ways", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = { "Druid", "Shaman", "Warrior" }, }, } },
    [7966] = { quests = { { id = 8541, name = "Grinding Stones for the Guard", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8806, name = "Grinding Stones for the Guard", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [7972] = { quests = { { id = 8256, name = "The Ichor of Undeath", amountNeeded = 1, races = {}, factions = {}, classes = { "Priest" }, }, } },
    [7974] = { quests = { { id = 6610, name = "Clamlette Surprise", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [8150] = { quests = { { id = 8586, name = "Dirge's Kickin' Chimaerok Chops", amountNeeded = 20, races = {}, factions = {}, classes = {}, }, { id = 8763, name = "The Hero of the Day", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8799, name = "The Hero of the Day", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8152] = { quests = { { id = 8785, name = "The Orgrimmar Legion Needs Mojo!", amountNeeded = 6, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8153] = { quests = { { id = 2848, name = "Wild Leather Shoulders", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2849, name = "Wild Leather Vest", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2850, name = "Wild Leather Helmet", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2851, name = "Wild Leather Boots", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2852, name = "Wild Leather Leggings", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2855, name = "Wild Leather Shoulders", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 2856, name = "Wild Leather Vest", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 2857, name = "Wild Leather Helmet", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 2858, name = "Wild Leather Boots", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 2859, name = "Wild Leather Leggings", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 82656, name = "Wild Leather Vest", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 82657, name = "Wild Leather Vest", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [8165] = { quests = { { id = 5141, name = "Dragonscale Leatherworking", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 5145, name = "Dragonscale Leatherworking", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, { id = 85701, name = "Dragonscale Leatherworking", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 85702, name = "Dragonscale Leatherworking", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [8170] = { quests = { { id = 5518, name = "The Gordok Ogre Suit", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 5519, name = "The Gordok Ogre Suit", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 8600, name = "The Horde Needs Rugged Leather!", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8601, name = "The Horde Needs More Rugged Leather!", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8173] = { quests = { { id = 2848, name = "Wild Leather Shoulders", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2855, name = "Wild Leather Shoulders", amountNeeded = 6, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8175] = { quests = { { id = 2850, name = "Wild Leather Helmet", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2857, name = "Wild Leather Helmet", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8176] = { quests = { { id = 2850, name = "Wild Leather Helmet", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2857, name = "Wild Leather Helmet", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8185] = { quests = { { id = 7884, name = "Crocolisk Boy and the Bearded Murloc", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 82283, name = "Crocolisk Boy and the Bearded Murloc", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [8187] = { quests = { { id = 2849, name = "Wild Leather Vest", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2856, name = "Wild Leather Vest", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8189] = { quests = { { id = 2849, name = "Wild Leather Vest", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2856, name = "Wild Leather Vest", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8191] = { quests = { { id = 2852, name = "Wild Leather Leggings", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2859, name = "Wild Leather Leggings", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8193] = { quests = { { id = 2851, name = "Wild Leather Boots", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2858, name = "Wild Leather Boots", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8197] = { quests = { { id = 2851, name = "Wild Leather Boots", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2858, name = "Wild Leather Boots", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8198] = { quests = { { id = 2852, name = "Wild Leather Leggings", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2859, name = "Wild Leather Leggings", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8203] = { quests = { { id = 5141, name = "Dragonscale Leatherworking", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 5145, name = "Dragonscale Leatherworking", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 85701, name = "Dragonscale Leatherworking", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 85702, name = "Dragonscale Leatherworking", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [8204] = { quests = { { id = 5141, name = "Dragonscale Leatherworking", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 5145, name = "Dragonscale Leatherworking", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 85701, name = "Dragonscale Leatherworking", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 85702, name = "Dragonscale Leatherworking", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [8211] = { quests = { { id = 5143, name = "Tribal Leatherworking", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 5148, name = "Tribal Leatherworking", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 85705, name = "Tribal Leatherworking", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 85706, name = "Tribal Leatherworking", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [8214] = { quests = { { id = 5143, name = "Tribal Leatherworking", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 5148, name = "Tribal Leatherworking", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 85705, name = "Tribal Leatherworking", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 85706, name = "Tribal Leatherworking", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [8244] = { quests = { { id = 2521, name = "To Serve Kum'isha", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 2522, name = "Kum'isha's Endeavors", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [8429] = { quests = { { id = 2605, name = "The Thirsty Goblin", amountNeeded = 30, races = {}, factions = {}, classes = {}, }, } },
    [8430] = { quests = { { id = 2605, name = "The Thirsty Goblin", amountNeeded = 30, races = {}, factions = {}, classes = {}, }, } },
    [8483] = { quests = { { id = 379, name = "Slake That Thirst", amountNeeded = 5, races = {}, factions = { "Horde" }, classes = {}, }, { id = 841, name = "Another Power Source?", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, { id = 1707, name = "Water Pouch Bounty", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 1878, name = "Water Pouch Bounty", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 82209, name = "Water Pouch Bounty", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [8544] = { quests = { { id = 8607, name = "The Horde Needs Mageweave Bandages!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8608, name = "The Horde Needs More Mageweave Bandages!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8545] = { quests = { { id = 8496, name = "Bandages for the Field", amountNeeded = 30, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8810, name = "Bandages for the Field", amountNeeded = 30, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8564] = { quests = { { id = 2741, name = "The Super Egg-O-Matic", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 8893, name = "The Super Egg-O-Matic", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [8643] = { quests = { { id = 2747, name = "An Extraordinary Egg", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [8644] = { quests = { { id = 2748, name = "A Fine Egg", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [8645] = { quests = { { id = 2749, name = "An Ordinary Egg", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [8646] = { quests = { { id = 2750, name = "A Bad Egg", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [8683] = { quests = { { id = 2746, name = "Items of Some Consequence", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [8831] = { quests = { { id = 8505, name = "The Alliance Needs Purple Lotus!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8506, name = "The Alliance Needs More Purple Lotus!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8582, name = "The Horde Needs Purple Lotus!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8583, name = "The Horde Needs More Purple Lotus!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [8836] = { quests = { { id = 7642, name = "Collection of Goods", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = { "Paladin" }, }, { id = 8509, name = "The Alliance Needs Arthas' Tears!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8510, name = "The Alliance Needs More Arthas' Tears!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [8846] = { quests = { { id = 4201, name = "The Love Potion", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [8925] = { quests = { { id = 79364, name = "A Simple Container", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [8932] = { quests = { { id = 6610, name = "Clamlette Surprise", amountNeeded = 20, races = {}, factions = {}, classes = {}, }, } },
    [8956] = { quests = { { id = 8778, name = "The Ironforge Brigade Needs Explosives!", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8785, name = "The Orgrimmar Legion Needs Mojo!", amountNeeded = 8, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [9061] = { quests = { { id = 8586, name = "Dirge's Kickin' Chimaerok Chops", amountNeeded = 20, races = {}, factions = {}, classes = {}, }, { id = 8778, name = "The Ironforge Brigade Needs Explosives!", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [9172] = { quests = { { id = 82090, name = "Mixology For Fun and Profit", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [9224] = { quests = { { id = 82090, name = "Mixology For Fun and Profit", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [9243] = { quests = { { id = 2868, name = "<TXT> The Shriveled Heart", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [9259] = { quests = { { id = 2880, name = "Troll Necklace Bounty", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 2881, name = "Troll Necklace Bounty", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 82210, name = "Troll Necklace Bounty", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [9264] = { quests = { { id = 7626, name = "Bell of Dethmoora", amountNeeded = 10, races = {}, factions = {}, classes = { "Warlock" }, }, } },
    [9308] = { quests = { { id = 2951, name = "The Sparklematic 5200!", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 2953, name = "More Sparklematic Action", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 4601, name = "The Sparklematic 5200!", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 4602, name = "The Sparklematic 5200!", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 4603, name = "More Sparklematic Action", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 4604, name = "More Sparklematic Action", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 80153, name = "The Sparklematic 5200!", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 80155, name = "More Sparklematic Action", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 80156, name = "The Sparklematic 5200!", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 80158, name = "The Sparklematic 5200!", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 80160, name = "More Sparklematic Action", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [9313] = { quests = { { id = 7896, name = "Green Fireworks", amountNeeded = 36, races = {}, factions = {}, classes = {}, }, { id = 80422, name = "Green Fireworks", amountNeeded = 36, races = {}, factions = {}, classes = {}, }, } },
    [10450] = { quests = { { id = 3381, name = "A Meeting with the Master", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [10455] = { quests = { { id = 3374, name = "The Essence of Eranikus", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [10507] = { quests = { { id = 3639, name = "Show Your Work", amountNeeded = 20, races = {}, factions = {}, classes = {}, }, } },
    [10559] = { quests = { { id = 3641, name = "Show Your Work", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 3643, name = "Show Your Work", amountNeeded = 6, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [10560] = { quests = { { id = 6026, name = "That's Asking A Lot", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, } },
    [10561] = { quests = { { id = 4244, name = "Chasing A-Me 01", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [10562] = { quests = { { id = 6026, name = "That's Asking A Lot", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, } },
    [10646] = { quests = { { id = 9195, name = "Craftsman's Writ - Goblin Sapper Charge", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [10721] = { quests = { { id = 82008, name = "Gnomish Solutions", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [10725] = { quests = { { id = 9197, name = "Craftsman's Writ - Gnomish Battle Chicken", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [11018] = { quests = { { id = 3761, name = "Un'Goro Soil", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 3764, name = "Un'Goro Soil", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 4496, name = "Bungle in the Jungle", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [11040] = { quests = { { id = 3785, name = "Morrowgrain Research", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 3786, name = "Morrowgrain Research", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, { id = 3791, name = "The Mystery of Morrowgrain", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 3792, name = "Morrowgrain to Feathermoon Stronghold", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 3803, name = "Morrowgrain to Darnassus", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 3804, name = "Morrowgrain to Thunder Bluff", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [11109] = { quests = { { id = 3861, name = "CLUCK!", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [11128] = { quests = { { id = 6026, name = "That's Asking A Lot", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [11325] = { quests = { { id = 4295, name = "Rocknot's Ale", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 7946, name = "Spawn of Jubjub", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [11370] = { quests = { { id = 6642, name = "Favor Amongst the Brotherhood, Dark Iron Ore", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 7627, name = "Wheel of the Black March", amountNeeded = 25, races = {}, factions = {}, classes = { "Warlock" }, }, } },
    [11371] = { quests = { { id = 8947, name = "Anthion's Strange Request", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, } },
    [11382] = { quests = { { id = 6646, name = "Favor Amongst the Brotherhood, Blood of the Mountain", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 84326, name = "Diplomat Ring", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 84411, name = "Diplomat Ring", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, } },
    [11404] = { quests = { { id = 7903, name = "Evil Bat Eyes", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 7943, name = "More Bat Eyes", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 82273, name = "More Bat Eyes", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 82274, name = "Evil Bat Eyes", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [11407] = { quests = { { id = 7900, name = "Torn Bear Pelts", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 79589, name = "Torn Bear Pelts", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [11513] = { quests = { { id = 4104, name = "Salve via Mining", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 4109, name = "Salve via Mining", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 5883, name = "Salve via Mining", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 5888, name = "Salve via Mining", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [11514] = { quests = { { id = 4105, name = "Salve via Gathering", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 4110, name = "Salve via Gathering", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 5884, name = "Salve via Gathering", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 5889, name = "Salve via Gathering", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [11515] = { quests = { { id = 4103, name = "Salve via Hunting", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 4108, name = "Salve via Hunting", amountNeeded = 6, races = {}, factions = { "Horde" }, classes = {}, }, { id = 5882, name = "Salve via Hunting", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 5887, name = "Salve via Hunting", amountNeeded = 6, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [11562] = { quests = { { id = 5247, name = "Fragments of the Past", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [11563] = { quests = { { id = 4484, name = "Libram of Voracity", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [11564] = { quests = { { id = 4482, name = "Libram of Tenacity", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [11567] = { quests = { { id = 4483, name = "Libram of Resilience", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [11590] = { quests = { { id = 7897, name = "Mechanical Repair Kits", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, { id = 82280, name = "Mechanical Repair Kits", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, } },
    [11815] = { quests = { { id = 77690, name = "A Small Upgrade", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [12207] = { quests = { { id = 6610, name = "Clamlette Surprise", amountNeeded = 12, races = {}, factions = {}, classes = {}, }, { id = 84324, name = "Diplomatic Overtures", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 84408, name = "Diplomatic Overtures", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, } },
    [12209] = { quests = { { id = 8611, name = "The Horde Needs Lean Wolf Steaks!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8612, name = "The Horde Needs More Lean Wolf Steaks!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [12210] = { quests = { { id = 8526, name = "The Alliance Needs Roast Raptor!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8527, name = "The Alliance Needs More Roast Raptor!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [12238] = { quests = { { id = 1141, name = "The Family and the Fishing Pole", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [12359] = { quests = { { id = 6026, name = "That's Asking A Lot", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 6861, name = "Zinfizzlex's Portable Shredder Unit", amountNeeded = 30, races = {}, factions = {}, classes = {}, }, { id = 6862, name = "Zinfizzlex's Portable Shredder Unit", amountNeeded = 30, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7653, name = "Imperial Plate Belt", amountNeeded = 20, races = {}, factions = {}, classes = {}, }, { id = 7654, name = "Imperial Plate Boots", amountNeeded = 40, races = {}, factions = {}, classes = {}, }, { id = 7655, name = "Imperial Plate Bracer", amountNeeded = 20, races = {}, factions = {}, classes = {}, }, { id = 7656, name = "Imperial Plate Chest", amountNeeded = 60, races = {}, factions = {}, classes = {}, }, { id = 7657, name = "Imperial Plate Helm", amountNeeded = 50, races = {}, factions = {}, classes = {}, }, { id = 7658, name = "Imperial Plate Leggings", amountNeeded = 60, races = {}, factions = {}, classes = {}, }, { id = 7659, name = "Imperial Plate Shoulders", amountNeeded = 20, races = {}, factions = {}, classes = {}, }, { id = 8499, name = "The Alliance Needs Thorium Bars!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8500, name = "The Alliance Needs More Thorium Bars!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9234, name = "Icebane Gauntlets", amountNeeded = 12, races = {}, factions = {}, classes = {}, }, { id = 9235, name = "Icebane Bracers", amountNeeded = 12, races = {}, factions = {}, classes = {}, }, { id = 9236, name = "Icebane Breastplate", amountNeeded = 16, races = {}, factions = {}, classes = {}, }, } },
    [12360] = { quests = { { id = 5067, name = "Leggings of Arcana", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 5068, name = "Breastplate of Bloodthirst", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 7630, name = "Arcanite", amountNeeded = 3, races = {}, factions = {}, classes = { "Warlock" }, }, { id = 7642, name = "Collection of Goods", amountNeeded = 6, races = {}, factions = { "Alliance" }, classes = { "Paladin" }, }, { id = 8728, name = "The Good News and The Bad News", amountNeeded = 20, races = {}, factions = {}, classes = {}, }, { id = 9034, name = "Dreadnaught Breastplate", amountNeeded = 4, races = {}, factions = {}, classes = { "Warrior" }, }, { id = 9036, name = "Dreadnaught Legplates", amountNeeded = 4, races = {}, factions = {}, classes = { "Warrior" }, }, { id = 9037, name = "Dreadnaught Helmet", amountNeeded = 5, races = {}, factions = {}, classes = { "Warrior" }, }, { id = 9038, name = "Dreadnaught Pauldrons", amountNeeded = 2, races = {}, factions = {}, classes = { "Warrior" }, }, { id = 9039, name = "Dreadnaught Sabatons", amountNeeded = 2, races = {}, factions = {}, classes = { "Warrior" }, }, { id = 9040, name = "Dreadnaught Gauntlets", amountNeeded = 1, races = {}, factions = {}, classes = { "Warrior" }, }, { id = 9041, name = "Dreadnaught Waistguard", amountNeeded = 1, races = {}, factions = {}, classes = { "Warrior" }, }, { id = 9042, name = "Dreadnaught Bracers", amountNeeded = 1, races = {}, factions = {}, classes = { "Warrior" }, }, { id = 9043, name = "Redemption Tunic", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9044, name = "Redemption Legguards", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9045, name = "Redemption Headpiece", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9046, name = "Redemption Spaulders", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9047, name = "Redemption Boots", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9048, name = "Redemption Handguards", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9049, name = "Redemption Girdle", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9050, name = "Redemption Wristguards", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9054, name = "Cryptstalker Tunic", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9055, name = "Cryptstalker Legguards", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9056, name = "Cryptstalker Headpiece", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9057, name = "Cryptstalker Spaulders", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9058, name = "Cryptstalker Boots", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9059, name = "Cryptstalker Handguards", amountNeeded = 1, races = {}, factions = {}, classes = { "Hunter" }, }, { id = 9060, name = "Cryptstalker Girdle", amountNeeded = 1, races = {}, factions = {}, classes = { "Hunter" }, }, { id = 9061, name = "Cryptstalker Wristguards", amountNeeded = 1, races = {}, factions = {}, classes = { "Hunter" }, }, { id = 9068, name = "Earthshatter Tunic", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9069, name = "Earthshatter Legguards", amountNeeded = 3, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9070, name = "Earthshatter Headpiece", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9071, name = "Earthshatter Spaulders", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9072, name = "Earthshatter Boots", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9073, name = "Earthshatter Handguards", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9074, name = "Earthshatter Girdle", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9075, name = "Earthshatter Wristguards", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9077, name = "Bonescythe Breastplate", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9078, name = "Bonescythe Legplates", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9082, name = "Bonescythe Gauntlets", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9084, name = "Bonescythe Bracers", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9230, name = "Ramaladni's Icy Grasp", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9234, name = "Icebane Gauntlets", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9235, name = "Icebane Bracers", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9236, name = "Icebane Breastplate", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 82089, name = "Master of Transmutation", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 84326, name = "Diplomat Ring", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 84411, name = "Diplomat Ring", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [12361] = { quests = { { id = 8728, name = "The Good News and The Bad News", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 9230, name = "Ramaladni's Icy Grasp", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9232, name = "The Only Song I Know...", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 84326, name = "Diplomat Ring", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 84411, name = "Diplomat Ring", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, } },
    [12363] = { quests = { { id = 5063, name = "Cap of the Scarlet Savant", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 9093, name = "Dreamwalker Wristguards", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9101, name = "Frostfire Belt", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9102, name = "Frostfire Bindings", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9109, name = "Plagueheart Belt", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9110, name = "Plagueheart Bindings", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9117, name = "Belt of Faith", amountNeeded = 2, races = {}, factions = {}, classes = { "Priest" }, }, { id = 9118, name = "Bindings of Faith", amountNeeded = 1, races = {}, factions = {}, classes = { "Priest" }, }, { id = 9121, name = "The Dread Citadel - Naxxramas", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9122, name = "The Dread Citadel - Naxxramas", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [12364] = { quests = { { id = 8779, name = "Scrying Materials", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8807, name = "Scrying Materials", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [12417] = { quests = { { id = 9183, name = "Craftsman's Writ - Radiant Circlet", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [12422] = { quests = { { id = 9179, name = "Craftsman's Writ - Imperial Plate Chest", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [12607] = { quests = { { id = 5166, name = "Breastplate of the Chromatic Flight", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 5167, name = "Legplates of the Chromatic Defier", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [12643] = { quests = { { id = 9178, name = "Craftsman's Writ - Dense Weightstone", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [12644] = { quests = { { id = 7893, name = "Rituals of Strength", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 7939, name = "More Dense Grinding Stones", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 8541, name = "Grinding Stones for the Guard", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8806, name = "Grinding Stones for the Guard", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, { id = 82276, name = "Rituals of Strength", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 82277, name = "More Dense Grinding Stones", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, } },
    [12655] = { quests = { { id = 5124, name = "Fiery Plate Gauntlets", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, { id = 5247, name = "Fragments of the Past", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8783, name = "Extraordinary Materials", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8809, name = "Extraordinary Materials", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 84495, name = "Fiery Plate Gauntlets", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, } },
    [12775] = { quests = { { id = 9182, name = "Craftsman's Writ - Huge Thorium Battleaxe", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [12792] = { quests = { { id = 9181, name = "Craftsman's Writ - Volcanic Hammer", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [12800] = { quests = { { id = 7646, name = "The Divination Scryer", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Paladin" }, }, { id = 7667, name = "Material Assistance", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Shaman" }, }, { id = 8728, name = "The Good News and The Bad News", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [12804] = { quests = { { id = 8785, name = "The Orgrimmar Legion Needs Mojo!", amountNeeded = 6, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [12810] = { quests = { { id = 8783, name = "Extraordinary Materials", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8809, name = "Extraordinary Materials", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8947, name = "Anthion's Strange Request", amountNeeded = 20, races = {}, factions = {}, classes = {}, }, { id = 9241, name = "Polar Bracers", amountNeeded = 12, races = {}, factions = {}, classes = {}, }, { id = 9242, name = "Polar Gloves", amountNeeded = 12, races = {}, factions = {}, classes = {}, }, { id = 9243, name = "Polar Tunic", amountNeeded = 16, races = {}, factions = {}, classes = {}, }, } },
    [12811] = { quests = { { id = 9121, name = "The Dread Citadel - Naxxramas", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [12871] = { quests = { { id = 5166, name = "Breastplate of the Chromatic Flight", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 5167, name = "Legplates of the Chromatic Defier", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [13422] = { quests = { { id = 9204, name = "Craftsman's Writ - Stonescale Eel", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [13423] = { quests = { { id = 8921, name = "The Ectoplasmic Distiller", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [13444] = { quests = { { id = 9200, name = "Craftsman's Writ - Major Mana Potion", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [13446] = { quests = { { id = 9202, name = "Craftsman's Writ - Major Healing Potion", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 84324, name = "Diplomatic Overtures", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 84408, name = "Diplomatic Overtures", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [13447] = { quests = { { id = 82090, name = "Mixology For Fun and Profit", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [13461] = { quests = { { id = 9201, name = "Craftsman's Writ - Greater Arcane Protection Potion", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [13506] = { quests = { { id = 9203, name = "Craftsman's Writ - Flask of Petrification", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [13512] = { quests = { { id = 8994, name = "Final Preparations", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [13546] = { quests = { { id = 5386, name = "Catch of the Day", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [13724] = { quests = { { id = 7645, name = "Manna-Enriched Horse Feed", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = { "Paladin" }, }, } },
    [13757] = { quests = { { id = 9206, name = "Craftsman's Writ - Lightning Eel", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [13858] = { quests = { { id = 9194, name = "Craftsman's Writ - Runecloth Robe", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [13864] = { quests = { { id = 9190, name = "Craftsman's Writ - Runecloth Boots", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [13890] = { quests = { { id = 9205, name = "Craftsman's Writ - Plated Armorfish", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [13935] = { quests = { { id = 8615, name = "The Horde Needs Baked Salmon!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8616, name = "The Horde Needs More Baked Salmon!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [13965] = { quests = { { id = 77690, name = "A Small Upgrade", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [14046] = { quests = { { id = 9191, name = "Craftsman's Writ - Runecloth Bag", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [14047] = { quests = { { id = 5218, name = "Felstone Field Cauldron", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 5221, name = "Dalson's Tears Cauldron", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 5224, name = "Writhing Haunt Cauldron", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 5227, name = "Gahrron's Withering Cauldron", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 6031, name = "Runecloth", amountNeeded = 30, races = {}, factions = {}, classes = {}, }, { id = 7642, name = "Collection of Goods", amountNeeded = 40, races = {}, factions = { "Alliance" }, classes = { "Paladin" }, }, { id = 7795, name = "A Donation of Runecloth", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7796, name = "Additional Runecloth", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7800, name = "A Donation of Runecloth", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7801, name = "Additional Runecloth", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7805, name = "A Donation of Runecloth", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7806, name = "Additional Runecloth", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7811, name = "A Donation of Runecloth", amountNeeded = 60, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7812, name = "Additional Runecloth", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7818, name = "A Donation of Runecloth", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7819, name = "Additional Runecloth", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7823, name = "A Donation of Runecloth", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7824, name = "A Donation of Runecloth", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7825, name = "Additional Runecloth", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7832, name = "Additional Runecloth", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7836, name = "A Donation of Runecloth", amountNeeded = 60, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7837, name = "Additional Runecloth", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9266, name = "Making Amends", amountNeeded = 40, races = {}, factions = {}, classes = {}, }, } },
    [14048] = { quests = { { id = 5518, name = "The Gordok Ogre Suit", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 5519, name = "The Gordok Ogre Suit", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 8782, name = "Uniform Supplies", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8808, name = "Uniform Supplies", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9237, name = "Glacial Cloak", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9238, name = "Glacial Wrists", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9239, name = "Glacial Gloves", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9240, name = "Glacial Vest", amountNeeded = 8, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [14104] = { quests = { { id = 9188, name = "Craftsman's Writ - Brightcloth Pants", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [14227] = { quests = { { id = 8782, name = "Uniform Supplies", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8808, name = "Uniform Supplies", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9237, name = "Glacial Cloak", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9238, name = "Glacial Wrists", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9239, name = "Glacial Gloves", amountNeeded = 2, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9240, name = "Glacial Vest", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [14256] = { quests = { { id = 8419, name = "An Imp's Request", amountNeeded = 1, races = {}, factions = {}, classes = { "Warlock" }, }, { id = 8420, name = "Hot and Itchy", amountNeeded = 1, races = {}, factions = {}, classes = { "Warlock" }, }, } },
    [14341] = { quests = { { id = 5518, name = "The Gordok Ogre Suit", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 5519, name = "The Gordok Ogre Suit", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [14342] = { quests = { { id = 6032, name = "Sacred Cloth", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 8782, name = "Uniform Supplies", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8808, name = "Uniform Supplies", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8947, name = "Anthion's Strange Request", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9071, name = "Earthshatter Spaulders", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9090, name = "Dreamwalker Boots", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9092, name = "Dreamwalker Girdle", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9095, name = "Frostfire Robe", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9096, name = "Frostfire Leggings", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9097, name = "Frostfire Circlet", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9098, name = "Frostfire Shoulderpads", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9099, name = "Frostfire Sandals", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9100, name = "Frostfire Gloves", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9101, name = "Frostfire Belt", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9103, name = "Plagueheart Robe", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9104, name = "Plagueheart Leggings", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9105, name = "Plagueheart Circlet", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9106, name = "Plagueheart Shoulderpads", amountNeeded = 2, races = {}, factions = {}, classes = { "Warlock" }, }, { id = 9107, name = "Plagueheart Sandals", amountNeeded = 2, races = {}, factions = {}, classes = { "Warlock" }, }, { id = 9108, name = "Plagueheart Gloves", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9109, name = "Plagueheart Belt", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9111, name = "Robe of Faith", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9112, name = "Leggings of Faith", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9113, name = "Circlet of Faith", amountNeeded = 3, races = {}, factions = {}, classes = { "Priest" }, }, { id = 9114, name = "Shoulderpads of Faith", amountNeeded = 2, races = {}, factions = {}, classes = { "Priest" }, }, { id = 9115, name = "Sandals of Faith", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9116, name = "Gloves of Faith", amountNeeded = 4, races = {}, factions = {}, classes = { "Priest" }, }, { id = 9117, name = "Belt of Faith", amountNeeded = 2, races = {}, factions = {}, classes = { "Priest" }, }, } },
    [14529] = { quests = { { id = 8522, name = "The Alliance Needs Runecloth Bandages!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8523, name = "The Alliance Needs More Runecloth Bandages!", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8609, name = "The Horde Needs Runecloth Bandages!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8610, name = "The Horde Needs More Runecloth Bandages!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [14530] = { quests = { { id = 8496, name = "Bandages for the Field", amountNeeded = 30, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8810, name = "Bandages for the Field", amountNeeded = 30, races = {}, factions = { "Horde" }, classes = {}, }, { id = 84324, name = "Diplomatic Overtures", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, { id = 84408, name = "Diplomatic Overtures", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, } },
    [15086] = { quests = { { id = 9184, name = "Craftsman's Writ - Wicked Leather Headband", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [15088] = { quests = { { id = 9186, name = "Craftsman's Writ - Wicked Leather Belt", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [15095] = { quests = { { id = 9187, name = "Craftsman's Writ - Runic Leather Pants", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [15407] = { quests = { { id = 8947, name = "Anthion's Strange Request", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9036, name = "Dreadnaught Legplates", amountNeeded = 3, races = {}, factions = {}, classes = { "Warrior" }, }, { id = 9038, name = "Dreadnaught Pauldrons", amountNeeded = 3, races = {}, factions = {}, classes = { "Warrior" }, }, { id = 9039, name = "Dreadnaught Sabatons", amountNeeded = 3, races = {}, factions = {}, classes = { "Warrior" }, }, { id = 9040, name = "Dreadnaught Gauntlets", amountNeeded = 5, races = {}, factions = {}, classes = { "Warrior" }, }, { id = 9041, name = "Dreadnaught Waistguard", amountNeeded = 5, races = {}, factions = {}, classes = { "Warrior" }, }, { id = 9043, name = "Redemption Tunic", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9045, name = "Redemption Headpiece", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9047, name = "Redemption Boots", amountNeeded = 3, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9048, name = "Redemption Handguards", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9050, name = "Redemption Wristguards", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9054, name = "Cryptstalker Tunic", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9055, name = "Cryptstalker Legguards", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9057, name = "Cryptstalker Spaulders", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9059, name = "Cryptstalker Handguards", amountNeeded = 5, races = {}, factions = {}, classes = { "Hunter" }, }, { id = 9061, name = "Cryptstalker Wristguards", amountNeeded = 2, races = {}, factions = {}, classes = { "Hunter" }, }, { id = 9068, name = "Earthshatter Tunic", amountNeeded = 3, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9069, name = "Earthshatter Legguards", amountNeeded = 5, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9073, name = "Earthshatter Handguards", amountNeeded = 5, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9075, name = "Earthshatter Wristguards", amountNeeded = 2, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9077, name = "Bonescythe Breastplate", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, { id = 9078, name = "Bonescythe Legplates", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 9079, name = "Bonescythe Helmet", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 9080, name = "Bonescythe Pauldrons", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9081, name = "Bonescythe Sabatons", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9082, name = "Bonescythe Gauntlets", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9083, name = "Bonescythe Waistguard", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9084, name = "Bonescythe Bracers", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9086, name = "Dreamwalker Tunic", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, { id = 9087, name = "Dreamwalker Legguards", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 9088, name = "Dreamwalker Headpiece", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, { id = 9089, name = "Dreamwalker Spaulders", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9090, name = "Dreamwalker Boots", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9091, name = "Dreamwalker Handguards", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9092, name = "Dreamwalker Girdle", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9093, name = "Dreamwalker Wristguards", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9098, name = "Frostfire Shoulderpads", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9099, name = "Frostfire Sandals", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9106, name = "Plagueheart Shoulderpads", amountNeeded = 3, races = {}, factions = {}, classes = { "Warlock" }, }, { id = 9107, name = "Plagueheart Sandals", amountNeeded = 3, races = {}, factions = {}, classes = { "Warlock" }, }, { id = 9114, name = "Shoulderpads of Faith", amountNeeded = 3, races = {}, factions = {}, classes = { "Priest" }, }, { id = 9115, name = "Sandals of Faith", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9241, name = "Polar Bracers", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9242, name = "Polar Gloves", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9243, name = "Polar Tunic", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9244, name = "Icy Scale Bracers", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9245, name = "Icy Scale Gauntlets", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 9246, name = "Icy Scale Breastplate", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [15408] = { quests = { { id = 9244, name = "Icy Scale Bracers", amountNeeded = 16, races = {}, factions = {}, classes = {}, }, { id = 9245, name = "Icy Scale Gauntlets", amountNeeded = 16, races = {}, factions = {}, classes = {}, }, { id = 9246, name = "Icy Scale Breastplate", amountNeeded = 24, races = {}, factions = {}, classes = {}, }, } },
    [15416] = { quests = { { id = 7384, name = "<nyi> <txt> The Scale Crafters", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 7628, name = "Doomsday Candle", amountNeeded = 35, races = {}, factions = {}, classes = { "Warlock" }, }, } },
    [15564] = { quests = { { id = 7885, name = "Armor Kits", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 7941, name = "More Armor Kits", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 8780, name = "Armor Kits for the Field", amountNeeded = 8, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8787, name = "Armor Kits for the Field", amountNeeded = 8, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9185, name = "Craftsman's Writ - Rugged Armor Kit", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 82281, name = "More Armor Kits", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 82282, name = "Armor Kits", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, } },
    [15992] = { quests = { { id = 8778, name = "The Ironforge Brigade Needs Explosives!", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [15993] = { quests = { { id = 9196, name = "Craftsman's Writ - Thorium Grenade", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [15994] = { quests = { { id = 1193, name = "A Broken Trap", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 7898, name = "Thorium Widget", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, { id = 7942, name = "More Thorium Widgets", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, { id = 82278, name = "More Thorium Widgets", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, { id = 82279, name = "Thorium Widget", amountNeeded = 6, races = {}, factions = {}, classes = {}, }, } },
    [15997] = { quests = { { id = 7341, name = "A Fair Trade", amountNeeded = 200, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7342, name = "Arrows Are For Sissies", amountNeeded = 200, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [16000] = { quests = { { id = 9198, name = "Craftsman's Writ - Thorium Tube", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [16006] = { quests = { { id = 8921, name = "The Ectoplasmic Distiller", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [16666] = { quests = { { id = 9011, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16667] = { quests = { { id = 9011, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16668] = { quests = { { id = 8957, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16669] = { quests = { { id = 8957, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16670] = { quests = { { id = 8957, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16671] = { quests = { { id = 8918, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Shaman" }, }, } },
    [16672] = { quests = { { id = 8942, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16673] = { quests = { { id = 8942, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16674] = { quests = { { id = 9000, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9008, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16675] = { quests = { { id = 8952, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9017, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16676] = { quests = { { id = 8931, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8938, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16677] = { quests = { { id = 9000, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9008, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16678] = { quests = { { id = 8952, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9017, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16679] = { quests = { { id = 8952, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9017, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16680] = { quests = { { id = 8931, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8938, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16681] = { quests = { { id = 8906, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Hunter" }, }, { id = 8914, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Hunter" }, }, } },
    [16682] = { quests = { { id = 8953, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9018, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16683] = { quests = { { id = 8907, name = "An Earnest Proposition", amountNeeded = 1, races = { "Gnome", "Human" }, factions = { "Alliance" }, classes = { "Mage" }, }, { id = 8915, name = "An Earnest Proposition", amountNeeded = 1, races = { "Troll", "Undead" }, factions = { "Horde" }, classes = { "Mage" }, }, } },
    [16684] = { quests = { { id = 8932, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8939, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16685] = { quests = { { id = 8932, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8939, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16686] = { quests = { { id = 9001, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9014, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [16687] = { quests = { { id = 8953, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9018, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16688] = { quests = { { id = 9001, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9014, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [16689] = { quests = { { id = 8953, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9018, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16690] = { quests = { { id = 9003, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9009, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16691] = { quests = { { id = 8955, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9019, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [16692] = { quests = { { id = 8934, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8940, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16693] = { quests = { { id = 9003, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9009, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16694] = { quests = { { id = 8955, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9019, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [16695] = { quests = { { id = 8955, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9019, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [16696] = { quests = { { id = 8934, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8940, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16697] = { quests = { { id = 8909, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Priest" }, }, { id = 8916, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Priest" }, }, } },
    [16698] = { quests = { { id = 9005, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9012, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [16699] = { quests = { { id = 8958, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9021, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [16700] = { quests = { { id = 9005, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9012, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [16701] = { quests = { { id = 8958, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9021, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [16702] = { quests = { { id = 8936, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8943, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16703] = { quests = { { id = 8911, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Warlock" }, }, { id = 8919, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Warlock" }, }, } },
    [16704] = { quests = { { id = 8958, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9021, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [16705] = { quests = { { id = 8936, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8943, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16706] = { quests = { { id = 8999, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9007, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16707] = { quests = { { id = 9004, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9010, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16708] = { quests = { { id = 8956, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9020, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16709] = { quests = { { id = 8956, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9020, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16710] = { quests = { { id = 8910, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Rogue" }, }, { id = 8917, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Rogue" }, }, } },
    [16711] = { quests = { { id = 8956, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9020, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16712] = { quests = { { id = 8935, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Rogue" }, }, { id = 8941, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Rogue" }, }, } },
    [16713] = { quests = { { id = 8935, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Rogue" }, }, { id = 8941, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Rogue" }, }, } },
    [16714] = { quests = { { id = 8905, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Druid" }, }, { id = 8913, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Druid" }, }, } },
    [16715] = { quests = { { id = 8951, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9016, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16716] = { quests = { { id = 8926, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8927, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16717] = { quests = { { id = 8926, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8927, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16718] = { quests = { { id = 8951, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9016, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16719] = { quests = { { id = 8951, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9016, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16720] = { quests = { { id = 8999, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9007, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16721] = { quests = { { id = 9004, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9010, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16722] = { quests = { { id = 8908, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Paladin" }, }, } },
    [16723] = { quests = { { id = 8933, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [16724] = { quests = { { id = 8933, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [16725] = { quests = { { id = 8954, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [16726] = { quests = { { id = 9002, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [16727] = { quests = { { id = 9002, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [16728] = { quests = { { id = 8954, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [16729] = { quests = { { id = 8954, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [16730] = { quests = { { id = 9006, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9013, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16731] = { quests = { { id = 9006, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9013, name = "Saving the Best for Last", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16732] = { quests = { { id = 8959, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9022, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16733] = { quests = { { id = 8959, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9022, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16734] = { quests = { { id = 8959, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9022, name = "Anthion's Parting Words", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16735] = { quests = { { id = 8912, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Warrior" }, }, { id = 8920, name = "An Earnest Proposition", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = { "Warrior" }, }, } },
    [16736] = { quests = { { id = 8937, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Warrior" }, }, { id = 8944, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [16737] = { quests = { { id = 8937, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = { "Warrior" }, }, { id = 8944, name = "Just Compensation", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [17010] = { quests = { { id = 6643, name = "Favor Amongst the Brotherhood, Fiery Core", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [17011] = { quests = { { id = 6644, name = "Favor Amongst the Brotherhood, Lava Core", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [17012] = { quests = { { id = 6645, name = "Favor Amongst the Brotherhood, Core Leather", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [17058] = { quests = { { id = 78265, name = "Fish Oil", amountNeeded = 24, races = {}, factions = {}, classes = {}, }, { id = 82850, name = "Fish Oil", amountNeeded = 24, races = {}, factions = {}, classes = {}, }, } },
    [17197] = { quests = { { id = 6962, name = "Treats for Great-father Winter", amountNeeded = 5, races = {}, factions = { "Horde" }, classes = {}, }, { id = 7025, name = "Treats for Greatfather Winter", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [17203] = { quests = { { id = 7604, name = "A Binding Contract", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 84338, name = "A Binding Contract", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [17422] = { quests = { { id = 6741, name = "More Booty!", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, { id = 6781, name = "More Armor Scraps", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7223, name = "Armor Scraps", amountNeeded = 20, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 7224, name = "Enemy Booty", amountNeeded = 20, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [17522] = { quests = { { id = 5892, name = "Irondeep Supplies", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 6985, name = "Irondeep Supplies", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, } },
    [17542] = { quests = { { id = 5893, name = "Coldtooth Supplies", amountNeeded = 10, races = {}, factions = { "Horde" }, classes = {}, }, { id = 6982, name = "Coldtooth Supplies", amountNeeded = 10, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [17771] = { quests = { { id = 7521, name = "Thunderaan the Windseeker", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 7786, name = "Thunderaan the Windseeker", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 85441, name = "Thunderaan the Windseeker", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [18562] = { quests = { { id = 8728, name = "The Good News and The Bad News", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 8789, name = "Imperial Qiraji Armaments", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 8790, name = "Imperial Qiraji Regalia", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 86671, name = "Imperial Qiraji Regalia", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, { id = 86672, name = "Imperial Qiraji Armaments", amountNeeded = 3, races = {}, factions = {}, classes = {}, }, } },
    [18706] = { quests = { { id = 7838, name = "Arena Grandmaster", amountNeeded = 12, races = {}, factions = {}, classes = {}, }, } },
    [18944] = { quests = { { id = 7736, name = "Restoring Fiery Flux Supplies via Kingsblood", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 8241, name = "Restoring Fiery Flux Supplies via Iron", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 8242, name = "Restoring Fiery Flux Supplies via Heavy Leather", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, } },
    [18945] = { quests = { { id = 7737, name = "Gaining Acceptance", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [19182] = { quests = { { id = 7930, name = "5 Tickets - Darkmoon Flower", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 7931, name = "5 Tickets - Minor Darkmoon Prize", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 7932, name = "12 Tickets - Lesser Darkmoon Prize", amountNeeded = 12, races = {}, factions = {}, classes = {}, }, { id = 7933, name = "40 Tickets - Greater Darkmoon Prize", amountNeeded = 40, races = {}, factions = {}, classes = {}, }, { id = 7934, name = "50 Tickets - Darkmoon Storage Box", amountNeeded = 50, races = {}, factions = {}, classes = {}, }, { id = 7935, name = "10 Tickets - Last Month's Mutton", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 7936, name = "50 Tickets - Last Year's Mutton", amountNeeded = 50, races = {}, factions = {}, classes = {}, }, { id = 7940, name = "1200 Tickets - Orb of the Darkmoon", amountNeeded = 1200, races = {}, factions = {}, classes = {}, }, { id = 7981, name = "1200 Tickets - Amulet of the Darkmoon", amountNeeded = 1200, races = {}, factions = {}, classes = {}, }, { id = 9249, name = "40 Tickets - Schematic: Steam Tonk Controller", amountNeeded = 40, races = {}, factions = {}, classes = {}, }, } },
    [19228] = { quests = { { id = 7906, name = "Darkmoon Cards - Beasts", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 7907, name = "Darkmoon Beast Deck", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [19257] = { quests = { { id = 7928, name = "Darkmoon Warlords Deck", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [19267] = { quests = { { id = 7929, name = "Darkmoon Elementals Deck", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [19277] = { quests = { { id = 7927, name = "Darkmoon Portals Deck", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [19440] = { quests = { { id = 8497, name = "Desert Survival Kits", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8804, name = "Desert Survival Kits", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8856, name = "Desert Survival Kits", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [19933] = { quests = { { id = 8222, name = "Glowing Scorpid Blood", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 8223, name = "More Glowing Scorpid Blood", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 82271, name = "More Glowing Scorpid Blood", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 82272, name = "Glowing Scorpid Blood", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, } },
    [20407] = { quests = { { id = 8829, name = "The Ultimate Deception", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [20452] = { quests = { { id = 8317, name = "Kitchen Assistance", amountNeeded = 10, races = {}, factions = {}, classes = {}, }, { id = 8497, name = "Desert Survival Kits", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 8804, name = "Desert Survival Kits", amountNeeded = 4, races = {}, factions = { "Horde" }, classes = {}, }, { id = 8856, name = "Desert Survival Kits", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [20520] = { quests = { { id = 8950, name = "The Instigator's Enchantment", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, } },
    [21377] = { quests = { { id = 8466, name = "Feathers for Grazle", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 8467, name = "Feathers for Nafien", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 84777, name = "Feathers for Nafien", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [21383] = { quests = { { id = 8469, name = "Beads for Salfa", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, } },
    [21829] = { quests = { { id = 8979, name = "Fenstad's Hunch", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9024, name = "Aristan's Hunch", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [21833] = { quests = { { id = 8979, name = "Fenstad's Hunch", amountNeeded = 1, races = {}, factions = { "Horde" }, classes = {}, }, { id = 9024, name = "Aristan's Hunch", amountNeeded = 1, races = {}, factions = { "Alliance" }, classes = {}, }, } },
    [21939] = { quests = { { id = 8928, name = "A Shifty Merchant", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [22014] = { quests = { { id = 8961, name = "Three Kings of Flame", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, } },
    [22682] = { quests = { { id = 9230, name = "Ramaladni's Icy Grasp", amountNeeded = 1, races = {}, factions = {}, classes = {}, }, { id = 9232, name = "The Only Song I Know...", amountNeeded = 2, races = {}, factions = {}, classes = {}, }, { id = 9234, name = "Icebane Gauntlets", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9235, name = "Icebane Bracers", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9236, name = "Icebane Breastplate", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 9237, name = "Glacial Cloak", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9238, name = "Glacial Wrists", amountNeeded = 4, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9239, name = "Glacial Gloves", amountNeeded = 5, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9240, name = "Glacial Vest", amountNeeded = 8, races = {}, factions = { "Alliance" }, classes = {}, }, { id = 9241, name = "Polar Bracers", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9242, name = "Polar Gloves", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9243, name = "Polar Tunic", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, { id = 9244, name = "Icy Scale Bracers", amountNeeded = 4, races = {}, factions = {}, classes = {}, }, { id = 9245, name = "Icy Scale Gauntlets", amountNeeded = 5, races = {}, factions = {}, classes = {}, }, { id = 9246, name = "Icy Scale Breastplate", amountNeeded = 8, races = {}, factions = {}, classes = {}, }, } },
}

local StatusEnum = {
    Completed = 'STATUS_COMPLETE',
    Incomplete = 'STATUS_INCOMPLETE'
}

local PlayerInfo = {
    race = "",
    class = "",
    faction = "",
}

local questStatuses = {}

function QIT:TableContains(haystack, needle)
    for _, value in pairs(haystack) do
        if string.gsub(value, " ", ""):lower() == needle then
            return true
        end
    end

    return false
end

function QIT:AvailableToPlayer(quest)
    return QIT:AvailableToPlayerRace(quest) and QIT:AvailableToPlayerFaction(quest) and QIT:AvailableToPlayerClass(quest)
end

function QIT:AvailableToPlayerRace(quest)
    return #quest.races == 0 or QIT:TableContains(quest.races, PlayerInfo.race)
end

function QIT:AvailableToPlayerFaction(quest)
    return #quest.factions == 0 or QIT:TableContains(quest.factions, PlayerInfo.faction)
end

function QIT:AvailableToPlayerClass(quest)
    return #quest.classes == 0 or QIT:TableContains(quest.classes, PlayerInfo.class)
end

function QIT:GetInfo(quest)
    if questStatuses[quest.id] == nil then
        local status
        local eligible = true
        local ineligibleReasons = {}
        local completed = false
        if C_QuestLog.IsQuestFlaggedCompleted(quest.id) then
            status = StatusEnum.Completed
            completed = true
        end

        if not QIT:AvailableToPlayerRace(quest) then
            for _, race in pairs(quest.races) do
                table.insert(ineligibleReasons, race)
            end

            eligible = false
        end

        if not QIT:AvailableToPlayerFaction(quest) then
            for _, faction in pairs(quest.factions) do
                table.insert(ineligibleReasons, faction)
            end
            eligible = false
        end

        if not QIT:AvailableToPlayerClass(quest) then
            for _, class in pairs(quest.classes) do
                table.insert(ineligibleReasons, class)
            end
            eligible = false
        end

        if not completed and eligible then
            status = StatusEnum.Incomplete
        end

        if #ineligibleReasons > 0 then
            status = table.concat(ineligibleReasons, ", ")
        end

        local questStatus = {
            status = status,
            completed = completed,
            eligible = eligible
        }

        questStatuses[quest.id] = questStatus
    end

    return questStatuses[quest.id]
end

function QIT:ShouldUpdate(current, incoming)
    if current == StatusEnum.Completed then -- Complete
        -- Never need to update if already complete
        return false
    elseif current ~= StatusEnum.Incomplete then -- Ineligible
        -- Only need to update if the incoming is complete
        if incoming == StatusEnum.Completed then
            return true
        else
            return false
        end
    else -- Incomplete
        -- Update if incoming is anything but incomplete
        if incoming ~= StatusEnum.Incomplete then
            return true
        else
            return false
        end
    end
end

function QIT:SetInfo(tt, count, item)
    count = count or 1
    local link = select(2, tt:GetItem())
    if link == nil then
        return
    end
    item = item or link
    local itemId = GetItemInfoFromHyperlink(link)

    if item and itemIdQuestMap[itemId] ~= nil then
        local questsInfoToDisplay = {}
        for _, quest in pairs(itemIdQuestMap[itemId].quests) do
            -- if QIT:AvailableToPlayer(quest) then
            local questStatus = QIT:GetInfo(quest)
            local leftText = quest.name .. ' [' .. tostring(count) .. '/' .. tostring(quest.amountNeeded) .. ']'
            local rightText = '(' .. questStatus.status .. ')'

            if questsInfoToDisplay[quest.name] == nil then
                questsInfoToDisplay[quest.name] = {
                    leftText = leftText,
                    rightText = rightText,
                    status = questStatus.status
                }
            else
                local currentStatus = questsInfoToDisplay[quest.name].questStatus
                local incomingStatus = questStatus.status

                if QIT:ShouldUpdate(currentStatus, incomingStatus) then
                    questsInfoToDisplay[quest.name] = {
                        leftText = leftText,
                        rightText = rightText,
                        status = incomingStatus
                    }
                end
            end
            -- end
        end

        for _, info in pairs(questsInfoToDisplay) do
            local green = 0
            local red = 0

            if info.status == StatusEnum.Completed or info.status == StatusEnum.Incomplete then
                green = 1
            end

            if info.status ~= StatusEnum.Completed then
                red = 1
            end

            tt:AddDoubleLine(
                info.leftText,
                info.rightText,
                1,
                1,
                0,
                red,
                green,
                0
            )
        end

        tt:Show()
    end
end

local CharacterBags = {}
for i = CONTAINER_BAG_OFFSET + 1, 23 do
    CharacterBags[i] = true
end

local firstBankBag = C_Container.ContainerIDToInventoryID(NUM_BAG_SLOTS + 1)
local lastBankBag = C_Container.ContainerIDToInventoryID(NUM_BAG_SLOTS + NUM_BANKBAGSLOTS)
for i = firstBankBag, lastBankBag do
    CharacterBags[i] = true
end

local SetItem = {
    SetAction = function(tt, slot)
        if GetActionInfo(slot) == "item" then
            QIT:SetInfo(tt, GetActionCount(slot))
        end
    end,
    SetAuctionItem = function(tt, auctionType, index)
        local _, _, count = GetAuctionItemInfo(auctionType, index)
        QIT:SetInfo(tt, count)
    end,
    SetAuctionSellItem = function(tt)
        local _, _, count = GetAuctionSellItemInfo()
        QIT:SetInfo(tt, count)
    end,
    SetBagItem = function(tt, bag, slot)
        local count
        local info = C_Container.GetContainerItemInfo(bag, slot)
        if info then
            count = info.stackCount
        end
        if count then
            QIT:SetInfo(tt, count)
        end
    end,
    SetCraftItem = function(tt, index, reagent)
        local _, _, count = GetCraftReagentInfo(index, reagent)
        local itemLink = GetCraftReagentItemLink(index, reagent)
        QIT:SetInfo(tt, count, itemLink)
    end,
    SetCraftSpell = function(tt)
        QIT:SetInfo(tt)
    end,
    SetInboxItem = function(tt, messageIndex, attachIndex)
        local count, itemID
        if attachIndex then
            count = select(4, GetInboxItem(messageIndex, attachIndex))
        else
            count, itemID = select(14, GetInboxHeaderInfo(messageIndex))
        end
        QIT:SetInfo(tt, count, itemID)
    end,
    SetInventoryItem = function(tt, unit, slot)
        local count
        if not CharacterBags[slot] then
            count = GetInventoryItemCount(unit, slot)
        end
        if slot < 107 then
            QIT:SetInfo(tt, count)
        end
    end,
    SetLootItem = function(tt, slot)
        local _, _, count = GetLootSlotInfo(slot)
        QIT:SetInfo(tt, count)
    end,
    SetLootRollItem = function(tt, rollID)
        local _, _, count = GetLootRollItemInfo(rollID)
        QIT:SetInfo(tt, count)
    end,
    SetQuestItem = function(tt, questType, index)
        local _, _, count = GetQuestItemInfo(questType, index)
        QIT:SetInfo(tt, count)
    end,
    SetQuestLogItem = function(tt, _, index)
        local _, _, count = GetQuestLogRewardInfo(index)
        QIT:SetInfo(tt, count)
    end,
    SetSendMailItem = function(tt, index)
        local count = select(4, GetSendMailItem(index))
        QIT:SetInfo(tt, count)
    end,
    SetTradePlayerItem = function(tt, index)
        local _, _, count = GetTradePlayerItemInfo(index)
        QIT:SetInfo(tt, count)
    end,
    SetTradeSkillItem = function(tt, index, reagent)
        local count
        if reagent then
            count = select(3, GetTradeSkillReagentInfo(index, reagent))
        else
            count = GetTradeSkillNumMade(index)
        end
        QIT:SetInfo(tt, count)
    end,
    SetTradeTargetItem = function(tt, index)
        local _, _, count = GetTradeTargetItemInfo(index)
        QIT:SetInfo(tt, count)
    end,
    SetTrainerService = function(tt, index)
        QIT:SetInfo(tt)
    end,
}

for method, func in pairs(SetItem) do
    hooksecurefunc(GameTooltip, method, func)
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event)
    local _, race = UnitRace("player")
    local _, class = UnitClass("player")
    local faction = UnitFactionGroup("player")

    PlayerInfo.class = class:lower()
    PlayerInfo.race = race:lower()
    PlayerInfo.faction = faction:lower()
end)
