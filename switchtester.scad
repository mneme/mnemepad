$fn = 50;

thickness = 2;
width = 22;
height = 9;
length = 119;
walls = 1.5;
bottom = 7;
cableholeWidth = 8;
cableholeHeight = 3;

translate([-(length/2),-12.5,bottom+1]) {
    difference(){
        union(){
            difference(){ 
                translate([0, 0, -bottom]) {
                    cube([length,width + walls*2,bottom]);
                }
                
                translate([thickness, thickness+walls, -bottom+thickness]) {
                    cube([length-thickness*2,width-thickness*2,bottom]);
                }
            }
            translate([0,walls,0]){
                translate([0,0,0]){
                  cube([length, thickness, height]);
                }
                
                translate([0,width-thickness]){
                    cube([length, thickness, height]);
                }
                
                translate([0,thickness]){
                    cube([thickness, width-2*thickness, height]);
                }
                
                translate([length-thickness,thickness]){
                    cube([thickness, width-2*thickness, height]);
                }
            }
        }
        translate([0,walls,0]){
            translate([100,width/2-cableholeWidth/2,-bottom+thickness]) {
                cube([20,cableholeWidth,cableholeHeight]);           
            }
        }
    }
}