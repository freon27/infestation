view_xview[0] = argument0 - (view_wview[0] / 2)
view_yview[0] = argument1 - (view_hview[0] / 2)

if (view_xview[0] < 0){
    view_xview[0] = 0
}
else if (view_xview[0] + view_wview[0] > room_width){
    view_xview[0] = room_width - view_wview[0]
}
if (view_yview[0] < 0){
    view_yview[0] = 0
}
else if (view_yview[0] + view_hview[0] > room_height){
    view_yview[0] = room_height - view_hview[0]
}
