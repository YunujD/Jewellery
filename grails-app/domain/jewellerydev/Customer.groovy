package jewellerydev

import java.text.SimpleDateFormat


class Customer {
    int customerId
    String phone
    String firstName
    String lastName
    String createdDate = new SimpleDateFormat("yyyy/MM/dd").format(new Date());
    static hasMany = [orders: OrderDetails]
    static constraints = {
        customerId min: 100
        customerId()
        firstName()
        lastName()
        createdDate()
        phone()
    }
    static mapping = {
        id generator: 'increment', name: "customerId"
    }
}
