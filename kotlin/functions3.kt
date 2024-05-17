fun main() {
    val word = "abebe beso bela"
    val res = unique(word)
    println("Does \"$word\" have all unique chars?  $res")
}

fun unique(word: String): Boolean {
    for (i in word.indices) {
        for (j in i + 1 until word.length) {
            if (word[i]== word[j]) {
                return false
            }
        }
    }
    return true
}