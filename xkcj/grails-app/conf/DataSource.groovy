/*dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "root"
    password = "a123456"
    url = "jdbc:mysql://121.40.50.104:3306/rjsq?userUnicode=true&characterEncoding=utf-8&zeroDateTimeBehavior=convertToNull"
   // loggingSql = true
   // formatSql=true
}*/
dataSource {
    pooled = true
    jmxExport = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "root"
    password = "a123456"
    autoReconnect = true
    zeroDateTimeBehavior = 'convertToNull'
}
hibernate {
    cache.use_second_level_cache = false
    cache.use_query_cache = false
    singleSession = true // configure OSIV singleSession mode
}

// environment specific settings
environments {
    development {
        dataSource {
            logSql = true
           // dbCreate = "create" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://121.40.50.104:3306/xkcj?userUnicode=true&characterEncoding=utf-8&zeroDateTimeBehavior=convertToNull"
        }

    }
    test {
        dataSource {
            dbCreate = ""
            url = "jdbc:mysql://121.40.50.104:3306/xkcj?userUnicode=true&characterEncoding=utf-8&zeroDateTimeBehavior=convertToNull"
        }
    }
    production {
        dataSource {
            logSql = false
            pooled = true
            url = "jdbc:mysql://127.0.0.1:3306/xkcj?userUnicode=true&characterEncoding=utf-8&zeroDateTimeBehavior=convertToNull"
            properties {
                jmxEnabled = true
                initialSize = 10
                maxActive = 50
                minIdle = 10
                maxIdle = 50
                maxWait = 10 * 60000
                maxAge = 10 * 60000
                timeBetweenEvictionRunsMillis = 5000
                minEvictableIdleTimeMillis = 60000
                validationQuery = "SELECT now()"
                validationQueryTimeout = 3
                validationInterval = 15000
                testOnBorrow  = true
                testWhileIdle = true
                testOnReturn = true
                removeAbandoned = true
                logAbandoned = true
                jdbcInterceptors = "ConnectionState"
            }
        }
    }
}
