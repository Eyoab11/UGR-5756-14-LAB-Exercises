fun main() {
    var sum = 0
    for (i in 1..50) {
        if (i % 2 == 0) {
            sum += i
        }
    }
    println("Sum of even numbers from 1 to 50 is $sum")
}
