package rjsq

class User {
    String id
    String login
    String password
    String realname
    String role
    static mapping = { table 'bxuser' }
}
