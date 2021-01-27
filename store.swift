var storeItem: Array<String> = []
var shoppingList: [String] = []

let fruits: [String] = ["🍌", "🍉", "🍓", "🫐", "🍈", "🍒", "🍑", "🥭", "🍍", "🥥", "🥝"]
let vegetables: [String] = ["🍅", "🍆", "🥑", "🥦", "🥬", "🥒", "🌶", "🫑", "🌽", "🥕", "🫒", "🧄", "🧅", "🥔", "🍠"]

    // PLAY
fillAllItem()
buyItem(buyItem: "🥕")
buyItem(buyItem: "🍅")

var totalPrice = itemPriceCheck(item: shoppingList)
print("SYSTEM: Your totalPrice is ", totalPrice)
    // FUNCTIONS 

func printStoreStatus() {
    print("STORE INFO: FillAllItem - \(storeItem)")
    print("STORE INFO: Count - \(storeItem.count) \n")
}

func fillAllItem() {
    for fruit in fruits {
        storeItem.append(fruit)
    }
    for vegetable in vegetables {
        storeItem.append(vegetable)
    } 
    printStoreStatus()
}

func buyItem(buyItem: String) -> Void {
    var arrayCount = 0
    
        for item in storeItem {
            if buyItem == item {
                print("SYSTEM: You bought \(buyItem)")
                storeItem.remove(at: arrayCount)
                print(storeItem, storeItem.count)
                shoppingList.append(buyItem)
                print("SYSTEM: Your ShoppingList is ", shoppingList)
        }
            arrayCount += 1
            
    }
}
func printShoppingList() {
    print("SHOP INFO: ", shoppingList)
    print("SYSTEM: The StoreItem list contains \(storeItem.count) items.")
}

func chageLine() {
    print("\n")
}

func addItem(item: String) -> Void {
    storeItem.append(item)
    print("SYSTEM: Added \(storeItem)")
}

// Needed multiple items
func itemPriceCheck(item: [String]) -> Int {
    var totalPrice: Int = 0
    
    func plusPrice(price : Int) {
        totalPrice += price
    }
    
    for item in item {
        switch item {
        case "🌽":
            plusPrice(price: 1200)
        case "🍅":
            plusPrice(price: 2000)
        case "🍆":
            plusPrice(price: 2500)
        case "🥑":
            plusPrice(price: 3000)
        case "🥦":
            plusPrice(price: 1300)
            case "🥕":
                plusPrice(price: 1000)
        default:
            return totalPrice
        }
    }
    
    return totalPrice
}

