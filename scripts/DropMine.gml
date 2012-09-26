if(!dropping_mine && mines > 0){
    dropping_mine = true
    mine = instance_create(self.x, self.y, UnarmedMineObject)
    mines -= 1
    alarm[2] = room_speed * 2
}
