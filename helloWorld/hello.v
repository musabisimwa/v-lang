import os

struct Point{
	x int
	y int
}

struct Line{
	p1 Point
	p2 Point
}

type OSumType = Line|Point

fn main(){
	println(os.args[1])
	mut a:= add(1,2)
	//a=0
	println(a)
	println(coordinate(1,2))
	
	mut store := [] OSumType{cap:5}

	for i in 1..4{
		store << Line{
			Point{(i+1),(i*i)}
			Point{i,i*2}
		}
	}

	dump(store)

	for i in store{
		println("printing $i")
	}

}
