package xkcj


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class HbsController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Hbs.list(params), model: [hbsInstanceCount: Hbs.count()]
    }

    def step() {
        render(view:'hbsend')
    }
    def hb2() {
        render(view:'hb2')
    }
    def hb4() {
        if (!params.get("onlyIdLkp")?.equals("1")){
            return  hb2()
        }
        render(view:'hb4')
    }
    def hb5() {
        if (!params.get("onlyIdLkp")?.equals("1")){
          return  hb2()
        }
        render(view:'hb5')
    }
    def add() {
        if (!params.get("onlyIdLkp")?.equals("1")){
            return  hb2()
        }
         Hbs hhb=Hbs.findByInvestorsPhone(params.get("investorsPhone"));
        if(hhb?.investorsPhone != params.get("investorsPhone")){
            def hbs	= new Hbs(params)
            hbs.superiorPhone=params.get("input4")
            hbs.save()
            hhb.superiorPhone=hbs?.superiorPhone
        }else {
            params.setProperty("moneyManagerPhone",hhb.moneyManagerPhone)
            params.setProperty("moneyManager",hhb.moneyManager)
        }

        Hbs superior1=Hbs.findByInvestorsPhone(hhb.superiorPhone)
        Hbs superior2=Hbs.findByInvestorsPhone(superior1?.superiorPhone)
        Hbs superior3=Hbs.findByInvestorsPhone(superior2?.superiorPhone)
        params.setProperty("superior1",superiorChange(superior1))
        params.setProperty("superior2",superiorChange(superior2))
        params.setProperty("superior3",superiorChange(superior3))

        render(view:'hb3', model: [hbs:params])
    }

    def superiorChange(Hbs superior){
        superior!=null?(superior?.investors.substring(0,1)+"*"+":"+superior?.investorsPhone.substring(0,3)+"XXXX"+superior?.investorsPhone.substring(7,11)+" 拱到200元红包！"  ):""
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
