package rjsq

import pl.touk.excel.export.WebXlsxExporter

import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class StakeinfoController {



    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        params.sort = "id"
        params.order = "asc"
        respond Stakeinfo.list(params), model: [stakeinfoInstanceCount: Stakeinfo.count()]
    }

    def show(Stakeinfo stakeinfoInstance) {
        respond stakeinfoInstance
    }

    def create() {
        respond new Stakeinfo(params)
    }
    def edit(User userInstance) {
        respond userInstance
    }


    @Transactional
    def update(Stakeinfo stakeinfoInstance) {
        if (stakeinfoInstance == null) {
            notFound()
            return
        }

        if (stakeinfoInstance.hasErrors()) {
            respond stakeinfoInstance.errors, view: 'edit'
            return
        }

        stakeinfoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Stakeinfo.label', default: 'Stakeinfo'), stakeinfoInstance.id])
                redirect stakeinfoInstance
            }
            '*' { respond stakeinfoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Stakeinfo stakeinfoInstance) {

        if (stakeinfoInstance == null) {
            notFound()
            return
        }

        stakeinfoInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Stakeinfo.label', default: 'Stakeinfo'), stakeinfoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stakeinfo.label', default: 'Stakeinfo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def index = { check() }


    def showpic = {
        check()
        def getv=request.getParameter("id")
        def stakeinfo = Stakeinfo.get(getv)
        String[] filesName =stakeinfo.compactFile.split(",")
        render(view:'showpic',model:[file:filesName])

    }
    def list = {
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
    def listzip = {

        def checkIds=request.getParameterValues("myCheckbox")
        List listIds = Arrays.asList(checkIds);
        response.setHeader("Content-Disposition", "attachment; filename="+java.net.URLEncoder.encode("合同下载.zip", "UTF-8") );
        OutputStream fos = response.getOutputStream();
        OutputStream out = new BufferedOutputStream(fos);
        ZipOutputStream zos=new ZipOutputStream(out);

        for(Stakeinfo stakeinfo  in Stakeinfo.findAllByIdInList(listIds)){
            for(String pathString in stakeinfo.compactFile.split(",")){

                ZipEntry zipEntry=new ZipEntry(stakeinfo.id+"/" + pathString.split("/")[1]);

                String newFilePath =this.getClass().getResource("/").getPath().replace("WEB-INF/classes/","").toString() + "payload/"+ pathString//linux 和Windows 获取路径不一样。测试环境和war环境路径也不一样

                InputStream input = new FileInputStream(newFilePath) ; // 定义文件的输入流
                zos.putNextEntry(zipEntry);
                int temp = 0 ;
                while((temp=input.read())!=-1){ // 读取内容
                    zos.write(temp) ;    // 压缩输出
                }
                input.close() ; // 关闭输入流
                zos.write("sss".bytes)

            }
        }
        zos.close();
        out.flush()
        out.close()
        fos.flush()
        fos.close()





    }

/**
 * 获得指定文件的byte数组
 */
    public static byte[] getBytes(String filePath){
        byte[] buffer = null;
        try {
            File file = new File(filePath);
            FileInputStream fis = new FileInputStream(file);
            ByteArrayOutputStream bos = new ByteArrayOutputStream(1000);
            byte[] b = new byte[1000];
            int n;
            while ((n = fis.read(b)) != -1) {
                bos.write(b, 0, n);
            }
            fis.close();
            bos.close();
            buffer = bos.toByteArray();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return buffer;
    }
    def save = {
        check()
        org.springframework.web.multipart.commons.CommonsMultipartFile[] file = request.getFiles('payload')
        def filename=upload(file)
        def stake	= new Stakeinfo(params)
        if(!session.user){
            redirect(controller:"user", action:"logexit")
        }
        /*  stake.department 		= request.getParameter('department')		// 部门
          stake.manageFinances 	= request.getParameter('manageFinances')	// 理财顾问
          stake.guestName 		= request.getParameter('guestName')			// 客户姓名
          stake.guestAddress 		= request.getParameter('guestAddress')		// 客户地址
          stake.guestVid 			= request.getParameter('guestVid')			// 客户身份证号码
          stake.guestPhone 		= request.getParameter('guestPhone')		// 客户手机
          stake.transferDate 		= request.getParameter('transferDate')		// 转账日期
          stake.fundSum 			= request.getParameter('fundSum')			// 投资金额
          stake.fundLimit 		= request.getParameter('fundLimit')			// 投资期限
          stake.interestDate 		= request.getParameter('interestDate')		// 计息日
          stake.overDate 			= request.getParameter('overDate')			// 到期日
          stake.compactId 		= request.getParameter('compactId')			// 合同编号*/
        stake.compactFile 		= filename									// 文件
        stake.operate 			= session.user.login 						// 操作人
        stake.save()

    }
    def insert = { check() }

    //上传到指定路径
    String upload (uploadedFile) {
        String returnFileDir=""
        int count=0
        for(file in uploadedFile){
            def webRootDir = servletContext.getRealPath("/")
            def userDir = new File(webRootDir, "/payload/"+session.user.login)
            userDir.mkdirs()

            String uploadedFileName=file.originalFilename.toString()//上传文件名
            String uploadedFileNameSuffix=uploadedFileName.substring(uploadedFileName.lastIndexOf("."))//上传文件后缀
            String uploadedFileNewName =  new Date().format ('yyyyMMddHHmmss') + (count++) + uploadedFileNameSuffix //上传文件新名称 按照上传时间命名

            file.transferTo( new File( userDir, uploadedFileNewName))
            returnFileDir=returnFileDir+session.user.login+"/"+ uploadedFileNewName + ","

        }
        return returnFileDir
    }

    def check = {
        if(!session.user){
            redirect(controller:"user", action:"logexit")
        }
    }
}
