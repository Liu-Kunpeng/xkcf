package xkcj

class Hbs {
    String moneyManager //理财经理
    String moneyManagerPhone //理财经理手机号码
    String investors //投资人
    String investorsPhone //投资人电话
    String superiorPhone //投资人上级电话

    static mapping = { table 'hbs' }

    static constraints = {
    }
}