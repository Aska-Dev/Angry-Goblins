connectedBlocks = [];

detectConnectedBlocks = function()
{
    var x1 = x - sprite_width;
    var x2 = x + sprite_width;
    var y1 = y - sprite_height;
    var y2 = y + sprite_height;
    
    var list = ds_list_create();
    collision_rectangle_list(x1, y1, x2, y2, oBlock, false, false, list, false);
    
    for(var i = 0; i < ds_list_size(list); i++)
    {
        array_push(connectedBlocks, ds_list_find_value(list, i));
    }
}
