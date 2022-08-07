import 'dart:math';

import 'package:rpgsolo/classes/npc.dart';
import 'package:rpgsolo/classes/towns/location.dart';
import 'package:rpgsolo/classes/towns/town.dart';
import 'package:rpgsolo/data/races.dart';
import 'package:rpgsolo/data/towns/locations_data.dart';
import 'package:rpgsolo/data/towns/town_data.dart';
import 'package:rpgsolo/generator/location_generator.dart';
import 'package:rpgsolo/generator/npc_generator.dart';
import 'package:rpgsolo/utils/extensions.dart';

class TownGenerator {
  static Town generate([TownType? townType, Random? random]) {
    Random rand = random ?? Random();
    TownType type =
        townType ?? TownType.values[rand.nextInt(TownType.values.length)];
    Race mainRace = Race.values[rand.nextInt(Race.values.length)];
    List<Location> locations = _generateLocations(type, mainRace, rand);
    String occupation = townOccupations[rand.nextInt(townOccupations.length)];
    List<Npc> npcs = _generateNpcs(type, mainRace, occupation, rand);
    int population = _generatePopulation(type, rand);
    String name = _generateTownName(type, rand);
    String description =
        _generateDescription(type, mainRace, name, population, rand);
    Town town = Town(
        name: name,
        townType: type,
        mainRace: mainRace,
        locations: locations,
        description: description,
        occupation: occupation,
        npcs: npcs,
        population: population);
    return town;
  }

  static List<Location> _generateLocations(
      TownType townType, Race mainRace, Random random) {
    List<Location> locations = [];
    late Location l;
    for (LocationType? loc in townLocations[townType] ?? []) {
      l = LocationGenerator.generate(loc, mainRace, random);
      while (locations.map((e) => e.type).toList().contains(l.type)) {
        l = LocationGenerator.generate(loc, mainRace, random);
      }
      locations.add(l.copyWith());
    }
    return locations;
  }

  static List<Npc> _generateNpcs(
      TownType townType, Race mainRace, String occupation, Random random) {
    return List.generate(townNpcs[townType] ?? 0, (i) {
      Race? r = random.nextInt(100) < 60 ? mainRace : null;
      Npc npc = NpcGenerator.generate(r, random);
      if (random.nextInt(100) < 60) {
        npc = npc.copyWith(occupation: occupation);
      }
      return npc;
    });
  }

  static int _generatePopulation(TownType townType, Random random) {
    if (townType == TownType.hamlet || townType == TownType.village) {
      double min = (townPopulation[townType]![0]).toDouble(),
          max = (townPopulation[townType]![1]).toDouble();
      int nmin = (min * 100).toInt(), nmax = (max * 100).toInt();
      return (random.nextInt(nmax - nmin) + nmin) * 10;
    } else {
      int min = (townPopulation[townType]![0]).toInt(),
          max = (townPopulation[townType]![1]).toInt();
      return (random.nextInt(max - min) + min) * 1000;
    }
  }

  static String _generateDescription(TownType townType, Race mainRace,
      String name, int population, Random random) {
    String looks =
        "${name.toTitleCase()} is ${townLook1[random.nextInt(townLook1.length)]} ${townType.name}. "
        "It is home to approximately $population people from different races, with the majority being ${mainRace.pluralName}."
        "${name.toTitleCase()} ${townPlace[random.nextInt(townPlace.length)]}. Many buildings in the ${townType.name} have ${townLook2[random.nextInt(townLook2.length)]} rooftops, ${townLook3[random.nextInt(townLook3.length)]} walls and ${townLook4[random.nextInt(townLook4.length)]}, giving it ${townLook5[random.nextInt(townLook5.length)]} atmosphere.";
    String special1 = townSpecialty[random.nextInt(townSpecialty.length)];
    String special2 = townSpecialty[random.nextInt(townSpecialty.length)];
    while (special2 == special1) {
      special2 = townSpecialty[random.nextInt(townSpecialty.length)];
    }
    String special =
        "${name.toTitleCase()} is known for $special1, and $special2. ${townRaceRelationship[random.nextInt(townRaceRelationship.length)].replaceAll("RACE", mainRace.pluralName).replaceAll("TYPE", townType.name)}.";
    return "$looks $special";
  }

  static String _generateTownName(TownType townType, Random random) {
    if (random.nextBool()) {
      return "${townNames1[random.nextInt(townNames1.length)]}${townNames2[random.nextInt(townNames2.length)]}${townNames6[random.nextInt(townNames6.length)]}";
    } else {
      return "${townNames6[random.nextInt(townNames6.length)]}${townNames7[random.nextInt(townNames7.length)]}";
    }
  }
}
