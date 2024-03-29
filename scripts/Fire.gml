//check we have ammo
        if (   
        ! self.currently_firing 
        && ! self.reloading 
        && (self.fire_while_moving 
        || self.moving == 0 
        || self.moving == 1)){
            
            if (self.current_clip == 0){
                script_execute(Reload)     
            }
            else {
                self.direction = point_direction(self.x, self.y, argument[0].x, argument[0].y)
                self.currently_firing = 1
                repeat(self.projectiles_per_shot){
                    shot = instance_create(self.x, self.y, bullet)
                    gun_spread = (random(1) * 2-1) * random(self.spread_factor)
                    shot.direction = point_direction(shot.x, shot.y, argument[0].x, argument[0].y) + gun_spread
                    shot.speed = 10
                    shot.damage = self.damage
                    self.alarm[0] = room_speed / self.fire_rate
                    
                }
                self.current_clip -= 1
            }
        }
