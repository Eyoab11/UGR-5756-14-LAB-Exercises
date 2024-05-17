fun main() {

    val hours: Double = 45.0
    val rate: Double = 20.0
    val regularHours: Double = 40.0
    val overtimeRateMultiplier: Double = 1.5
    val regularPay: Double
    val overtimePay: Double

    if (hours > regularHours) {
        regularPay = regularHours * rate
        overtimePay = (hours - regularHours) * rate * overtimeRateMultiplier
    } else {
        regularPay = hours * rate
        overtimePay = 0.0
    }
    val totalPay: Double = regularPay + overtimePay
    println("Total pay: $$totalPay")
}
