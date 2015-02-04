package xkcj

import pl.touk.excel.export.WebXlsxExporter

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class HbController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def indexxkhb(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Hb.list(params), model:[hbInstanceCount: Hb.count()],view: "indexxkhb"

    }
    def query(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Hb.list(params), model:[hbInstanceCount: Hb.count()] ,view: "indexxkhb"
    }
    def step() {

        //render(view:'hbsend',model:[file:filesName])
        render(view:'hbsend')
    }
    def hb2() {

        //render(view:'hbsend',model:[file:filesName])
        render(view:'hb2')
    }
    def add() {
        Hb hhb=Hb.findByInvestors(params.get("Investors"));
        if(hhb?.Investors != params.get("Investors")){
            def hb	= new Hb(params)
            hb.save()
        }else {
            params.setProperty("moneyManagerPhone",hhb.moneyManagerPhone)
            params.setProperty("moneyManager",hhb.moneyManager)
        }
        render(view:'hb3', model: [hb:params])
    }

    def listExcel () {
        def headers = ['ID','投资人','投资人手机号码', '理财经理', '理财经理电话']
        def withProperties = ['id','InvestorsPhone','Investors', 'moneyManager', 'moneyManagerPhone']

        new WebXlsxExporter().with {
            setResponseHeaders(response)
            fillHeader(headers)
            add(Hb.findAll(), withProperties)
            save(response.outputStream)
        }



    }


    def show(Hb hbInstance) {
        respond hbInstance
    }

    def create() {
        respond new Hb(params)
    }

    @Transactional
    def save(Hb hbInstance) {
        if (hbInstance == null) {
            notFound()
            return
        }

        if (hbInstance.hasErrors()) {
            respond hbInstance.errors, view:'create'
            return
        }

        hbInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'hb.label', default: 'Hb'), hbInstance.id])
                redirect hbInstance
            }
            '*' { respond hbInstance, [status: CREATED] }
        }
    }

    def edit(Hb hbInstance) {
        respond hbInstance
    }

    @Transactional
    def update(Hb hbInstance) {
        if (hbInstance == null) {
            notFound()
            return
        }

        if (hbInstance.hasErrors()) {
            respond hbInstance.errors, view:'edit'
            return
        }

        hbInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Hb.label', default: 'Hb'), hbInstance.id])
                redirect hbInstance
            }
            '*'{ respond hbInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Hb hbInstance) {

        if (hbInstance == null) {
            notFound()
            return
        }

        hbInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Hb.label', default: 'Hb'), hbInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'hb.label', default: 'Hb'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
