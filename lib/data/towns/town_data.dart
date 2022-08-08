//-----------------------------------Type-----------------------------------
import 'package:rpgsolo/data/towns/locations_data.dart';

enum TownType {
  hamlet,
  village,
  town,
  city,
  metropolis,
}

//-----------------------------------Locations-----------------------------------
const townLocations = {
  TownType.hamlet: [LocationType.tavern, null],
  TownType.village: [LocationType.tavern, LocationType.generalStore, null],
  TownType.town: [LocationType.tavern, LocationType.generalStore, null, null],
  TownType.city: [
    LocationType.tavern,
    LocationType.generalStore,
    null,
    null,
    null
  ],
  TownType.metropolis: [
    LocationType.tavern,
    LocationType.generalStore,
    null,
    null,
    null,
    null
  ]
};

//-----------------------------------Occupations-----------------------------------
const townOccupations = [
  'farmer',
  'fisher',
  'sheppard',
  'miller',
  'miner',
  'peddler',
  'sailor',
  'bandit',
  'slaver',
  'merchant',
  'musician',
  'tinker',
  'trader',
  'forester',
  'soldier',
];

//-----------------------------------Npcs-----------------------------------
const townNpcs = {
  TownType.hamlet: 1,
  TownType.village: 2,
  TownType.town: 3,
  TownType.city: 4,
  TownType.metropolis: 5
};

//-----------------------------------Population-----------------------------------
const townPopulation = {
  TownType.hamlet: [0.05, 0.2],
  TownType.village: [0.5, 1],
  TownType.town: [2, 6],
  TownType.city: [7, 15],
  TownType.metropolis: [16, 25]
};

//-----------------------------------Description-----------------------------------
const townPlace = [
  'sits on high bluffs that can only be accessed via rope elevator',
  'has a sinister reputation among the countryside',
  'is completely destitute and rundown',
  'sits in the shadow of a large ruined castle',
  'was founded on a major battle site',
  'has canals instead of streets',
  'has outlawed worship of traditional gods',
  'is divded by a river',
  'is built on a holy site',
  'has a huge library containing important archives',
  'is mostly a tangle of alleyways and row houses',
  'is built around a huge tree',
  'has an awful smell',
  'is the headquarters of a major family or guild',
  'is built nearby an important tomb or graveyard',
  'has an unusually wealthy population',
  'is built around a large fortress',
  'was built atop ancient ruins',
  'is built upon an isolated peak that can only be accessed by a bridge',
  'features many verdant parks and orchards',
  'was founded on a mythical or magical event',
  'is a major trade center for the surrounding area',
  'is defended by magical constructs and wards',
  'is built into the side of a mountain',
  'is the center of trade for a popular local commodity',
];
const townSpecialty = [
  'having powerful guilds',
  'its salt mines',
  'its artists and writers',
  'its cheeky populace',
  'its cordial populace',
  'its charitable populace',
  'having delicious cuisine',
  'its blunt populace',
  'its ruthless mercenaries',
  'its quarries',
  'being the home of a great hero',
  'its greedy merchants',
  'its polite populace',
  'dark magic',
  'its kind populace',
  'its lush farmland',
  'its colorful dyes',
  'its courteous populace',
  'its skilled craftsmen',
  'its boorish populace',
  'its precious gems',
  'its medicinal plants',
  'its tolerant populace',
  'its devout populace',
  'its short populace',
  'having exotic spices',
  'its rude populace',
  'having hordes of beggars',
  'its surly populace',
  'its productive ironworks',
  'its vulgar populace',
  'its nice populace',
  'its friendly populace',
  'having high fashion',
  'its decadence',
  'its patriotism',
  'its gambling',
  'its mines and industry',
  'its strong drink',
  'its potent herbs',
  'its crude populace',
  'its wines',
  'its uncouth populace',
  'its tall populace',
  'its suspicious populace',
  'its rowdy populace',
  'its neighborly populace',
  'its sturdy arms & armors',
  'its bad-mannered populace',
  'its energetic horses',
  'having tough warriors',
  'its political intrigue',
  'its flowers',
  'its gruff populace',
  'its heavy-handed guards',
  'having good education',
  'its tasty fish',
  'its civil populace',
  'its piety',
  'its lumber and forestry'
];
const townRaceRelationship = [
  'The RACE oppress the minority races in the TYPE',
  'The RACE are conquerors of the other races in the TYPE',
  'There is some tension between the races in the TYPE',
  'The races in the TYPE live together mostly in harmony',
  'There is some tension between the races in the TYPE',
  'The races in the TYPE live together mostly in harmony',
  'There is some tension between the races in the TYPE',
  'The races in the TYPE live together mostly in harmony',
];
const townLook1 = [
  "a gorgeous",
  "a beautiful",
  "a majestic",
  "an elegant",
  "a glorious",
  "an impressive",
  "a flamboyant",
  "a luxuriant",
  "a stunning",
  "an impressive",
  "a delightful",
  "a graceful",
  "a magnificent",
  "an imposing",
  "a sublime",
  "a humble",
  "a crude",
  "a rough",
  "a mediocre",
  "a dull",
  "a plain",
  "an ordinary",
  "a hideous",
  "a gruesome",
  "a dreadful",
  "a macabre",
  "a ghastly",
  "an unattractive",
  "an unexciting",
  "a worn",
  "a mundane",
];
const townLook2 = [
  "oak wood",
  "maple wood",
  "yew wood",
  "cypress wood",
  "pine wood",
  "spruce  wood",
  "redwood",
  "ash wood",
  "birch wood",
  "blackwood",
  "ebony wood",
  "elm wood",
  "ironwood",
  "mahogany wood",
  "silky oak wood",
  "willow wood",
  "bamboo",
  "tatchet",
  "shingle",
  "slate tile",
  "wheat straw",
  "seagrass",
  "ceramic tile",
  "copper",
];
const townLook3 = [
  "golden brick",
  "red brick",
  "redstone",
  "granite",
  "marble",
  "limestone",
  "sandstone",
  "stone veneer",
  "chiseled stone",
  "oak wood",
  "maple wood",
  "yew wood",
  "cypress wood",
  "pine wood",
  "spruce  wood",
  "redwood",
  "ash wood",
  "birch wood",
  "blackwood",
  "ebony wood",
  "elm wood",
  "ironwood",
  "mahogany wood",
  "silky oak wood",
  "willow wood",
  "bamboo",
  "tatchet",
  "shingle",
  "slate tile",
  "wheat straw",
  "seagrass",
  "ceramic tile",
  "copper",
  "lavastone",
];
const townLook4 = [
  "lucious gardens",
  "enchanting wildlife",
  "swarms of fireflies",
  "babbling creeks",
  "vibrant, rare trees",
  "a breathtaking waterfall",
  "calm and quiet collection of ponds",
  "frozen lakes",
  "a frozen waterfall",
  "an imposing glacier",
  "ambient light of nearby lava streams",
  "the native bird species",
  "rainbow of different flowers",
  "an everclear night sky",
  "a huge, majestic geyser",
  "a silent mountain range",
  "foggy fields",
  "a gorgeous mirror lake",
  "rows upon rows of lucious trees",
  "a staircase of waterfalls",
  "frozen ponds",
  "aromatic flowers",
  "a calming ocean front",
  "fields of farmland",
  "a bamboo forest",
  "a huge oak tree",
  "a stunning canyon",
  "majestic fjords",
  "white, sandy beaches",
  "amazing sunsets",
];
const townLook5 = [
  "an amusing",
  "a captivating",
  "a charming",
  "a delightful",
  "an enchanting",
  "an enthralling",
  "an entrancing",
  "a fascinating",
  "a glamorous",
  "an heavenly",
  "an intriguing",
  "an inviting",
  "a magical",
  "a mystical",
  "a mythical",
  "an otherworldly",
  "a pleasant",
  "a pleasing",
];

//-----------------------------------Sidequests-----------------------------------
const townSidequests = [
  'Find a nearby bandit hideout',
  'Help a farmer fight off a gang trying to steal his land',
  'Help a merchant who is being hassled by gangsters',
  'Help teach a teenager to fight',
  'Check out a nearby cave',
  'Help a troubled spirit find peace',
  'Locate a lost gemstone for a merchant',
  'Help an innkeeper get a beehive out of the stables',
  'Investigate a murder for the town council',
  'Investigate the burning of a farmhouse',
  'Find a rare herb for an herbalist',
  'Help peasants do a controlled field burning',
  'Clean a temple for the priest',
  'Impersonate a noble at a party',
  'Help out at the local quarry',
  'Help dig a grave',
  'Guard a ship overnight',
  'Help repair a dam',
  'Capture a wanted outlaw',
  'Cut timber for a businessman',
  'Free a wrongly condemned prisoner',
  'Locate a missing merchant',
  'Break up a gang of bootleggers',
  'Represent  a noble in an archery contest',
  'Help tend an orchard',
  'Return a ring to a noble family',
  'Pick flowers for a wedding',
  "Infiltrate the thieves' guild and pass information to the mayor",
  'Rescue prisoners being held in a goblin lair',
  'Load cargo on a ship for a sea captain',
  'Round up escaped horses',
  'Help raise a barn',
  'Take care of horses at the stables',
  'Help a noble find a lost key',
  'Deliver a letter to the mayor of another town',
  'Clear land for crops for a farmer',
  'Deliver medicine to ill person',
  'Deliver an ancient book to a wizard',
  'Transport goods for a merchant to another town',
  'Track down a pickpocket',
  'Deliver a package to the hermit of the hills',
  'Find a rare book for a librarian',
  'Investigate a field of dead birds',
  'Escort a princess to her wedding',
  'Dig a ditch for the mayor',
  'Harvest crops for a farmer',
  'Deliver a sword to a knight',
  'Chop firewood for the innkeeper',
  'Set an ambush for bandits',
  'Kill the rats in a warehouse',
  'Investigate strange tracks by the lake',
  'Find a kidnapped child',
  'Find an escaped prisoner',
  'Help a young page find his sword before the tournament',
  'Guard the walls of the town overnight',
  'Lend a hand in the mines',
  'Investigate odd sightings in the tunnels under the town',
  'Explore the ruins under the old saw mill',
  "Investigate why the town's main water source dried up",
  'Explore a ruin for a noble family',
  'Help a general store with its grand opening',
  'Protect a witness until the trial',
  'Carry a message to another kingdom',
  "Find the thief who stole the king's signet ring",
  'Investigate a strange door unearthed outside of town',
  'Guard a trade caravan',
  'Deliver a ring to a certain gnome inventor',
  'Escort a prisoner from one town to another',
  'Dig a well',
  'Bring a white stag to the king',
  "Provide the entertainment at the princess's birthday party",
  'Locate a runaway prince and return him to the queen',
  'Investigate goblin tracks seen nearby',
  "Provide security for a noble's party",
  'Find the fountain of youth for a wealthy old man',
  'Join an expedition to a lost city',
  'Perform a prisoner exchange',
  'Transport a chest to a dwarven stronghold',
  "Milk the innkeeper's cows",
  'Search the old city ruins for an artifact',
  'Play matchmaker for two rival innkeepers',
  'Deliver pies for an innkeeper',
  'Map a forest for a noble',
  'Investigate the sounds coming from the graveyard',
  'Secretly deliver a message to a prisoner',
  'Investigate recent burglaries'
];

//-----------------------------------Names-----------------------------------
const townNames1 = [
  "a",
  "e",
  "i",
  "o",
  "u",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
];
const townNames2 = [
  "b",
  "c",
  "d",
  "f",
  "g",
  "h",
  "j",
  "k",
  "l",
  "m",
  "n",
  "p",
  "q",
  "r",
  "s",
  "t",
  "v",
  "w",
  "x",
  "y",
  "z",
  "br",
  "cr",
  "dr",
  "fr",
  "gr",
  "kr",
  "pr",
  "qr",
  "sr",
  "tr",
  "vr",
  "wr",
  "yr",
  "zr",
  "str",
  "bl",
  "cl",
  "fl",
  "gl",
  "kl",
  "pl",
  "sl",
  "vl",
  "yl",
  "zl",
  "ch",
  "kh",
  "ph",
  "sh",
  "yh",
  "zh",
];
const townNames6 = [
  "aco",
  "ada",
  "adena",
  "ago",
  "agos",
  "aka",
  "ale",
  "alo",
  "am",
  "anbu",
  "ance",
  "and",
  "ando",
  "ane",
  "ans",
  "anta",
  "arc",
  "ard",
  "ares",
  "ario",
  "ark",
  "aso",
  "athe",
  "eah",
  "edo",
  "ego",
  "eigh",
  "eim",
  "eka",
  "eles",
  "eley",
  "ence",
  "ens",
  "ento",
  "erton",
  "ery",
  "esa",
  "ester",
  "ey",
  "ia",
  "ico",
  "ido",
  "ila",
  "ille",
  "in",
  "inas",
  "ine",
  "ing",
  "irie",
  "ison",
  "ita",
  "ock",
  "odon",
  "oit",
  "ok",
  "olis",
  "olk",
  "oln",
  "ona",
  "oni",
  "onio",
  "ont",
  "ora",
  "ord",
  "ore",
  "oria",
  "ork",
  "osa",
  "ose",
  "ouis",
  "ouver",
  "ul",
  "urg",
  "urgh",
  "ury",
];
const townNames7 = [
  "bert",
  "burg",
  "burgh",
  "burn",
  "bury",
  "bus",
  "by",
  "caster",
  "dale",
  "dence",
  "diff",
  "ding",
  "don",
  "fast",
  "ford",
  "gan",
  "gas",
  "gate",
  "gend",
  "ginia",
  "gow",
  "ham",
  "las",
  "ledo",
  "lens",
  "ling",
  "mery",
  "mond",
  "mont",
  "more",
  "nard",
  "phia",
  "phis",
  "port",
  "pus",
  "ridge",
  "rith",
  "ron",
  "rora",
  "ross",
  "rough",
  "sa",
  "sall",
  "sas",
  "sea",
  "set",
  "sey",
  "shire",
  "son",
  "stead",
  "stin",
  "ta",
  "tin",
  "tol",
  "ton",
  "vale",
  "ver",
  "vine",
  "ving",
  "well",
  "wood",
];
