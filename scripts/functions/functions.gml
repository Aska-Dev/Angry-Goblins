function get_point_b_coordinates(x_a, y_a, distance, angle_degrees) {
    // GameMaker GML-Funktionen wie lengthdir_x und lengthdir_y sind ideal dafür.
    // Sie nehmen Distanz und Winkel (in Grad) direkt entgegen.
    var _x_b = x_a + lengthdir_x(distance, angle_degrees);
    var _y_b = y_a + lengthdir_y(distance, angle_degrees);
    
    return {x: _x_b, y: _y_b};
}