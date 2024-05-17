fun main() {
    val start = 10
    val end = 50
    var num = start
    println("Prime numbers from $start to $end are ")
    while (num <= end) {
        if (isPrime(num)) {
            println(num)
        }
        num++
    }
}
fun isPrime(num: Int): Boolean {
    if (num < 2) return false
    var i = 2
    while (i <= num / 2) {
        if (num % i == 0) {
            return false
        }
        i++
    }
    return true
}
