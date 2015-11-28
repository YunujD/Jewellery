package jewellerydev

import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.*

@Transactional(readOnly = true)
class OrderDetailsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond OrderDetails.list(params), model:[orderDetailsInstanceCount: OrderDetails.count()]
    }

    def show(OrderDetails orderDetailsInstance) {
        respond orderDetailsInstance
    }

    def create() {
        respond new OrderDetails(params)
    }

    @Transactional
    def save(OrderDetails orderDetailsInstance) {
        if (orderDetailsInstance == null) {
            notFound()
            return
        }

        if (orderDetailsInstance.hasErrors()) {
            respond orderDetailsInstance.errors, view:'create'
            return
        }

        orderDetailsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'orderDetails.label', default: 'OrderDetails'), orderDetailsInstance.id])
                redirect orderDetailsInstance
            }
            '*' { respond orderDetailsInstance, [status: CREATED] }
        }
    }

    def edit(OrderDetails orderDetailsInstance) {
        respond orderDetailsInstance
    }

    @Transactional
    def update(OrderDetails orderDetailsInstance) {
        if (orderDetailsInstance == null) {
            notFound()
            return
        }

        if (orderDetailsInstance.hasErrors()) {
            respond orderDetailsInstance.errors, view:'edit'
            return
        }

        orderDetailsInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'OrderDetails.label', default: 'OrderDetails'), orderDetailsInstance.id])
                redirect orderDetailsInstance
            }
            '*'{ respond orderDetailsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(OrderDetails orderDetailsInstance) {

        if (orderDetailsInstance == null) {
            notFound()
            return
        }

        orderDetailsInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'OrderDetails.label', default: 'OrderDetails'), orderDetailsInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderDetails.label', default: 'OrderDetails'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
