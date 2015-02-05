package xkcj


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HbsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Hbs.list(params), model: [hbsInstanceCount: Hbs.count()]
    }

    def show(Hbs hbsInstance) {
        respond hbsInstance
    }

    def create() {
        respond new Hbs(params)
    }

    @Transactional
    def save(Hbs hbsInstance) {
        if (hbsInstance == null) {
            notFound()
            return
        }

        if (hbsInstance.hasErrors()) {
            respond hbsInstance.errors, view: 'create'
            return
        }

        hbsInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'hbs.label', default: 'Hbs'), hbsInstance.id])
                redirect hbsInstance
            }
            '*' { respond hbsInstance, [status: CREATED] }
        }
    }

    def edit(Hbs hbsInstance) {
        respond hbsInstance
    }

    @Transactional
    def update(Hbs hbsInstance) {
        if (hbsInstance == null) {
            notFound()
            return
        }

        if (hbsInstance.hasErrors()) {
            respond hbsInstance.errors, view: 'edit'
            return
        }

        hbsInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Hbs.label', default: 'Hbs'), hbsInstance.id])
                redirect hbsInstance
            }
            '*' { respond hbsInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Hbs hbsInstance) {

        if (hbsInstance == null) {
            notFound()
            return
        }

        hbsInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Hbs.label', default: 'Hbs'), hbsInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'hbs.label', default: 'Hbs'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
