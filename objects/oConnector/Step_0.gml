if(array_length(connectedBlocks) == 0)
{
    detectConnectedBlocks();
}

var allVSpeed = 0;
var allHSpeed = 0;

for(var i = 0; i < array_length(connectedBlocks); i++)
{
    allVSpeed += connectedBlocks[i].vspeed;
    allHSpeed += connectedBlocks[i].hspeed;
}

for(var i = 0; i < array_length(connectedBlocks); i++)
{
    connectedBlocks[i].vspeed = allVSpeed;
    connectedBlocks[i].hspeed = allHSpeed;
}