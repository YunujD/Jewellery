package jewellerydev

class OrderDetails {
    int orderId
    String orderName
    String orderDesc
    float price
    Date dateCreated
    static belongsTo = [customers: Customer]
    static constraints = {
        orderId()
        orderName()
        orderDesc()
        price()
        dateCreated()
    }
    static mapping = {
        id generator: 'increment', name: "orderId"
    }
}
