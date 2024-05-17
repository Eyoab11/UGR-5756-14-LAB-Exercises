fun main() {
    val num = 1234321
    if (isPalindrome(num)) {
        println("$num is a palindrome")
    } else {
        println("$num is not a palindrome")
    }
}

fun isPalindrome(num: Int): Boolean {
    var original = num
    var reversed = 0

    while (original != 0) {
        val digit = original % 10
        reversed = reversed * 10 + digit
        original /= 10
    }
    return num == reversed
}
