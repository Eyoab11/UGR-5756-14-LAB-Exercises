class Rectangle(private val rectLength: Double, private val rectWidth: Double) {
    fun calculatePerimeter(): Double {
        return 2 * (rectLength + rectWidth)
    }
    fun calculateArea(): Double {
        return rectLength * rectWidth
    }
}
fun main() {
    val rectangle = Rectangle(5.0, 3.0)
    println("Perimeter of the rectangle ${rectangle.calculatePerimeter()}")
    println("Area of the rectangle ${rectangle.calculateArea()}")
}
