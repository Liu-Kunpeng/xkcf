package rjsq



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class UserController {


    def index(Integer max) {
        check()
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }



    def login = {
        render(view:'login')
    }

    def authenticate = {
        def user = User.findByLoginAndPassword(params.login, params.password)
        if(user){
            session.user = user
            flash.message = "Hello ${user.realname}!"
            if(user.role=="1"){
                redirect(controller:"user", action:"index")
            }else{
                redirect(controller:"stakeinfo", action:"insert")
            }
        }else{
            flash.message = "对不起, ${params.login}. 验证失败，请再试一次."
            redirect(uri: "/")
        }
    }

    def logout = {
        flash.message = "Goodbye ${session.user.name}"
        session.user = null
        render(view:'login')
    }

    def logexit = {
        flash.message = "信息验证失效，请重新登陆！"
        redirect(uri: "/")
    }



    def save = {
        //def user	= User.get(session.user.id)
        //def file =request.getFile('payload')
        def user	= new User()
        user.login=request.getParameter("login")
        user.password=request.getParameter("password")
        user.realname=request.getParameter("realname")
        user.role="1"

        user.save()
        render(view:'index')
    }
    def check = {
        if(!session.user){
            redirect(controller:"user", action:"logexit")
        } else if (session.user.role !="1"){
            redirect(controller:"user", action:"logexit")
        }
    }
}
