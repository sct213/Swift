func swapIntegers(_ a: inout Int, _ b: inout Int) {
	let _ : Int = a
	a = b
	b = a
}

var firstInt = 123
var secondInt = 456

swapIntegers(&firstInt, &secondInt)

print("A: \(firstInt), secondInt: \(secondInt)")
