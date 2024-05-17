fun main() {
    val num = 8
    val res = factorial(num)
    println("Factorial of $num is $res")
}

fun factorial(n: Int): Int {
    return if (n <= 1) 1 else n * factorial(n - 1)
}

