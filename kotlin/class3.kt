class ShoppingCart {
    private val cartItems: MutableList<Pair<String, Double>> = mutableListOf()

    fun addItem(itemName: String, itemPrice: Double) {
        cartItems.add(Pair(itemName, itemPrice))
    }

    fun removeItem(itemName: String) {
        cartItems.removeIf { it.first == itemName }
    }

    fun calculateTotalPrice(): Double {
        return cartItems.sumOf { it.second }
    }
}

fun main() {
    val shoppingCart = ShoppingCart()
    shoppingCart.addItem("Tuna", 100.0)
    shoppingCart.addItem("Milk", 55.0)
    shoppingCart.addItem("Soft", 30.0)
    println("Total price: ${shoppingCart.calculateTotalPrice()}")
    shoppingCart.removeItem("Milk")
    println("Total price after removing Milk: ${shoppingCart.calculateTotalPrice()}")
}
