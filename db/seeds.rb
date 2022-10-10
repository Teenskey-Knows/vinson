puts "Seeding has begun"


heros1 =Hero.create(name:"Mike Tyson",
    super_name:"Iron Mike")
    
heros2 =Hero.create(name:"Michael Jackson",
super_name:"King of pop") 

powers1 =Power.create(name:"Fighter",
description:"Fights all villains with great artistry")

powers2 =Power.create(name:"Singer",
description:"Sings like crazy")


hero_power1=HeroPower.create(strength:"Puncher",hero_id:heros1.id,power_id:powers1.id)

hero_power2=HeroPower.create(strength:"Musical cords",hero_id:heros2.id,power_id:powers2.id)


puts "Seed has ended"