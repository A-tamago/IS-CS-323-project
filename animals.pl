animal(elephant, mammals, herbivore, wild, gives_birth, heavy_skin). animal(hippo, mammals, herbivore, aquatic, gives_birth, thick_skin). animal(rhinoceros, mammals, herbivore, wild, gives_birth, heavySkin). animal(giraffe, mammals, herbivore, wild, gives_birth, fur). animal(cow, mammals, herbivore, wild, gives_birth, fur). animal(sheep, mammals, herbivore, wild, gives_birth, fur). animal(gazelle, mammals, herbivore, wild, gives_birth, fur). animal(horse, mammals, herbivore, wild, gives_birth, fur). animal(dugong, mammals, herbivore, aquatic, gives_birth, thick_skin). animal(manatee, mammals, herbivore, aquatic, gives_birth, thick_skin). animal(rabbit, mammals, herbivore, wild, gives_birth, fur). animal(seaOtter, mammals, carnivore, aquatic, gives_birth, fur). animal(platypus, mammals, omnivore, aquatic, lays_eggs, fur). animal(capybara, mammals, herbivore, wild, gives_birth, fur). animal(kangaroo, mammals, herbivore, wild, gives_birth, fur). animal(beaver, mammals, herbivore, aquatic, gives_birth, fur). animal(mole, mammals, insectivore, wild, gives_birth, fur). animal(monkey, mammals, omnivore, wild, gives_birth, fur). animal(bat, mammals, insectivore, aerial, gives_birth, fur). animal(dog, mammals, omnivore, wild, gives_birth, fur). animal(cat, mammals, carnivore, wild, gives_birth, fur). animal(squirrel, mammals, herbivore, wild, gives_birth, fur). animal(skunk, mammals, omnivore, wild, gives_birth, fur). animal(anteater, mammals, insectivore, wild, gives_birth, fur). animal(tiger, mammals, carnivore, wild, gives_birth, fur). animal(lion, mammals, carnivore, wild, gives_birth, fur). animal(cheetah, mammals, carnivore, wild, gives_birth, fur). animal(fox, mammals, omnivore, wild, gives_birth, fur). animal(wolf, mammals, carnivore, wild, gives_birth, fur). animal(whale, mammals, carnivore, aquatic, gives_birth, thick_skin). animal(hyena, mammals, carnivore, wild, gives_birth, fur). animal(honeyBadger, mammals, carnivore, wild, gives_birth, fur). animal(bear, mammals, omnivore, wild, gives_birth, fur). 

animal(piranha, fishes, carnivore, aquatic, lays_eggs, slimy_scales). animal(dolphin, mammals, carnivore, aquatic, gives_birth, thick_skin). animal(crab, fishes, omnivore, aquatic, lays_eggs, hardend_skin). animal(shrimp, fishes, omnivore, aquatic, lays_eggs, hardnd_skin). animal(octopus, fishes, carnivore, aquatic, lays_eggs, soft_skin). animal(shark, fishes, carnivore, aquatic, gives_birth, fine_scales). animal(jellyfish, invertebrate, carnivore, aquatic, lays_eggs, soft_skin). animal(squid, invertebrate, carnivore, aquatic, lays_eggs, soft_skin). animal(oyster, invertebrate, omnivore, aquatic, lays_eggs, hardend_skin). animal(salmon, fishes, carnivore, aquatic, lays_eggs, slimy_scales). animal(tuna, fishes, carnivore, aquatic, lays_eggs, fine_scales). animal(catfish, fishes, omnivore, aquatic, lays_eggs, slimy_skin). animal(anemone, fishes, carnivore, aquatic, lays_eggs, soft_skin).

animal(hawk, birds, carnivore, wild, lays_eggs, feathers). animal(eagle, birds, carnivore, wild, lays_eggs, feathers). animal(crow, birds, omnivore, wild, lays_eggs, feathers). animal(seagull, birds, omnivore, aquatic, lays_eggs, feathers). animal(stork, birds, carnivore, wild, lays_eggs, feathers). animal(flamingo, birds, omnivore, aquatic, lays_eggs, feathers). animal(pigeon, birds, omnivore, wild, lays_eggs, feathers). animal(chicken, birds, omnivore, wild, lays_eggs, feathers). animal(peacock, birds, omnivore, wild, lays_eggs, feathers). animal(canary, birds, herbivore, wild, lays_eggs, feathers). animal(quail, birds, omnivore, wild, lays_eggs, feathers). animal(hoopoe, birds, insectivore, wild, lays_eggs, feathers). animal(bulbul, birds, omnivore, wild, lays_eggs, feathers). animal(woodpecker, birds, insectivore, wild, lays_eggs, feathers). animal(owl, birds, carnivore, wild, lays_eggs, feathers). animal(kiwi, birds, omnivore, wild, lays_eggs, feathers). animal(ostrich, birds, omnivore, wild, lays_eggs, feathers). animal(greaterHoneyGuide, birds, insectivore, wild, lays_eggs, feathers). animal(cuckoo, birds, insectivore, wild, lays_eggs, feathers). animal(penguin, birds, carnivore, aquatic, lays_eggs, feathers). animal(shrike, birds, carnivore, wild, lays_eggs, feathers). 

animal(turtle, reptiles, omnivore, aquatic, lays_eggs, hard_scales). animal(alligator, reptiles, carnivore, aquatic, lays_eggs, soft_scales). animal(crocodile, reptiles, carnivore, aquatic, lays_eggs, soft_scales). animal(snake, reptiles, carnivore, wild, lays_eggs, soft_scales). animal(chameleon, reptiles, insectivore, wild, lays_eggs, dry_scales). animal(lizard, reptiles, insectivore, wild, lays_eggs, dry_scales). animal(tuatara, reptiles, insectivore, wild, lays_eggs, dry_scales).

animal(frog, amphibians, carnivore, aquatic, lays_eggs, slimy_skin). animal(toad, amphibians, carnivore, wild, lays_eggs, slimy_skin). animal(salamander, amphibians, carnivore, wild, lays_eggs, slimy_skin). animal(axolotl, amphibians, carnivore, aquatic, lays_eggs, slimy_skin).

find_specifically(Type, Food, Environment, Reproduction, Skin, Name) :- animal(Name, Type, Food, Environment, Reproduction, Skin).


find_chars(Name):-
    animal(Name, Type, Food, Environment, Reproduction, Skin),
    write(Name), nl,
    write(Type), nl,
    write(Food), nl,
    write(Environment), nl,
    write(Reproduction), nl,
    write(Skin), nl.

find_byCharacteristic(Characteristic, Animals) :-
    findall(Name, (
        animal(Name, Characteristic, _,_, _,_);
        animal(Name, _, Characteristic, _,_, _);
        animal(Name, _, _, Characteristic, _,_);
        animal(Name, _, _, _, Characteristic,_);
        animal(Name, _, _, _,_, Characteristic)
    ), Animals).

findall_interactively :-
    write('What type of animals? (mammals/birds/fishes/reptiles/amphibians):'),
    read(Type),
    write('What kind of eater? (carnivore/herbivore/omnivore/insectivore): '),
    read(Food),
    write('What environment do they live in? (wild/aquatic): '),
    read(Environment),
    write('What is the reproduction method of the animals? (gives_birth/lays_eggs): '),
    read(Reproduction),
    write('What type of skin does they have? (fur/feathers/scales(…)/skin(…): '),
    read(Skin),
    findall(Name, (
        animal(Name, Type, Food, Environment, Reproduction, Skin)
    ), AnimalsList),
    write('is the animal you are looking for one of  these '),write(AnimalsList).

find_animal_interactively :-
    write('What is the type of the animal? (mammals/birds/fishes/reptiles/amphibians): '),
    read(Type),
    write('What is the diet of the animal? (carnivore/herbivore/omnivore/insectivore): '),
    read(Food),
    write('What is the living environment of the animal? (wild/aquatic): '),
    read(Environment),
    write('What is the reproduction method of the animal? (gives_birth/lays_eggs): '), 
    read(Reproduction),
    write('What type of skin does the animal have? (fur/feathers/scales(…)/skin(…): '),
    read(Skin),
    find_specifically(Type, Food, Environment, Reproduction,Skin, Name),
    write('Your animal is a: '), write(Name).

rfind_interactively :-
    write('What is the type of the animal? (mammals/birds/fishes/reptiles/amphibians): '),
    read(Type),
    write('What is the diet of the animal? (carnivore/herbivore/omnivore/insectivore): '),
    read(Food),
    write('What is the living environment of the animal? (wild/aquatic): '),
    read(Environment),
    write('What is the reproduction method of the animal? (gives_birth/lays_eggs): '),
    read(Reproduction),
    write('What type of skin does the animal have? (fur/feathers/scales(…)/skin(…): '),
    read(Skin),
    findall(Name, (
        animal(Name, Type, Food, Environment, Reproduction, Skin)
    ), AnimalsList),
    random_member(M,AnimalsList),
    write('is the animal you are looking for a '),write(M).
