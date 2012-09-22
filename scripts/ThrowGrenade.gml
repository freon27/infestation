if(!throwing_grenade && grenades > 0){
    throwing_grenade = true
    new_grenade = instance_create(self.x, self.y, GrenadeObject)
    new_grenade.speed = 5 + point_distance(self.x,self.y,argument[0],argument[1]) / 100
    if (new_grenade.speed > 10
    ){
        new_grenade.speed = 10
    }
    new_grenade.direction = point_direction(self.x,self.y,argument[0],argument[1])
    grenades -= 1
    alarm[2] = room_speed * 2
}
