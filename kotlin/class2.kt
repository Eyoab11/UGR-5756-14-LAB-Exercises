class Triangle(private val sideA: Double, private val sideB: Double, private val sideC: Double) {
    fun isEquilateral(): Boolean {
        return sideA == sideB && sideB == sideC
    }

    fun isIsosceles(): Boolean {
        return sideA == sideB || sideA == sideC || sideB == sideC
    }

    fun isScalene(): Boolean {
        return sideA != sideB && sideA != sideC && sideB != sideC
    }
}

fun main() {
    val triangle = Triangle(3.0, 3.0, 3.0)
    println("Is the triangle equilateral? ${triangle.isEquilateral()}")
    println("Is the triangle isosceles? ${triangle.isIsosceles()}")
    println("Is the triangle scalene? ${triangle.isScalene()}")
}
