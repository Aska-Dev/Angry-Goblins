var enemies = [];

with(oEnemy)
{
    array_push(enemies, self);
}

var allStopped = true;

if(shotActive)
{
    with(oBlock)
    {
        if(allStopped)
        {
            allStopped = self.speed <= 0;
        }
    }
    
    with(oAmmo)
    {
        if(allStopped)
        {
            allStopped = self.speed <= 0;
        }
    }
        
    if(allStopped && alarm[0] == -1)
    {
        startTimer();
    }   
}

if(array_length(enemies) <= 0 && allStopped)
{
    room_goto_next();
}
