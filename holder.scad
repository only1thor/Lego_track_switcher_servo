
module slice(x){
	translate([0,2*x,4+3])
	cube([5,1,6.1],center=true);
}

module slices(){
	slice(-1);
	slice(1);
}

module shaft(){
	difference(){
		cylinder(h = 10, r = 2.5);
		slices();
	}
	cylinder(h = 2, r = 4.75); 
}

module spinner(){
	difference(){
		translate([0,0,0.05])
		cylinder(h = 9.9, r = 12);
		shaft();
	}
}

module base(){
	spinner();
	translate([-8,0,9])
	cylinder(5 ,r1 = 1,r2 = 2.5);
}

translate([0,0,-2])
base();
translate([0,0,10.5])
difference(){
	translate([3,0,0])
	cube([30, 5, 4.99],center=true);
	translate([-8,0,-2.55])
	cylinder(5.1 ,r1 = 1.4,r2 = 2.9);
}
translate([15,0,0])
cylinder(h = 7, r = 3.5/2);