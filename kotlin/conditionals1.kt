fun main() {
    val length1: Number = 10
    val length2: Number = 10
    val length3: Number = 10
    
    if (length1 == length2 && length2 == length3){
        println("The triangle is equilateral")
    } else if 
    (length1 == length2 && length2 !=length3 || length2 == length3 && length1 !=length3 || length1 == length3 && length1 != length2         )
    	println("The triangle is isosceles")
    else{
        println("The triangle is scalene")
    }
}