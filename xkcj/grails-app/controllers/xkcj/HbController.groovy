package xkcj



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class HbController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def indexxkhb(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Hb.list(params), model:[hbInstanceCount: Hb.count()]

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

    def list () {
        check()
        def headers = ['ID','部门', '理财顾问', '客户姓名','客户地址','客户身份证号码','客户手机','转账日期','投资金额','投资期限','计息日','到期日','合同编号','文件','操作人']
        def withProperties = ['id','department', 'manageFinances', 'guestName','guestAddress','guestVid','guestPhone','transferDate','fundSum','fundLimit','interestDate','overDate','compactId','compactFile','operate']
        def checkIds=request.getParameterValues("myCheckbox")
        List listIds = Arrays.asList(checkIds);

        new WebXlsxExporter().with {
            setResponseHeaders(response)
            fillHeader(headers)
            add(Stakeinfo.findAllByIdInList(listIds), withProperties)
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
