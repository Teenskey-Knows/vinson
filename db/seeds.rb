puts "Seeding data"


cena =Hero.create(name:"Bukkati",
    super_name:"The demon slayer")
    
singer =Hero.create(name:"Sho Madjozi",
super_name:"South Gal") 

song =Power.create(name:"Magic hand",
description:"Fights with all vigor and power in the world.If you need a superhero chose this one over here.That's whatsapp.")

songstu =Power.create(name:"Vocal Cord",
description:"The musical cords can inspire you to sing too.The artistry is a gem to behold.Do not sleep on it.")


heroPower=HeroPower.create(strength:"Strong",hero_id:cena.id,power_id:song.id)

heroPowerres=HeroPower.create(strength:"Average",hero_id:singer.id,power_id:songstu.id)


puts "Completion of data seed"