fun main() {
    val num1 = 40
    val num2 = 80
    val num3 = 70
    val largestNum: Int = if (num1 > num2) {
        if (num1 > num3) num1 else num3
    } else {
        if (num2 > num3) num2 else num3
    }

    println("Largest number is $largestNum")
}