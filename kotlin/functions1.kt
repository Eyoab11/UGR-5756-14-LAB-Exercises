fun main() {
    val numbers = arrayOf(6, 3, 9, 4, 5)
    sortArray(numbers)
    println(numbers.joinToString(", "))
}

fun sortArray(arr: Array<Int>) {
    for (i in arr.indices) {
        for (j in i + 1 until arr.size) {
            if (arr[i] > arr[j]) {
                val temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
            }
        }
    }
}