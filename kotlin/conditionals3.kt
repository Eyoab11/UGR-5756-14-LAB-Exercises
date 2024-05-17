fun main() {
    val month = 7
    val day = 18
    val season: String = if (month in 3..5) {
        if (month == 3 && day < 20) "Winter" else "Spring"
    } else if (month in 6..8) {
        if (month == 6 && day < 21) "Spring" else "Summer"
    } else if (month in 9..11) {
        if (month == 9 && day < 22) "Summer" else "Autumn"
    } else {
        if (month == 12 && day < 21) "Autumn" else "Winter"
    }

    println("Season is $season")
}
