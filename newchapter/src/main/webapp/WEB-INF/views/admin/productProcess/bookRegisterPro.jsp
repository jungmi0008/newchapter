<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "bookshop.master.ShopBookDBBean" %>
<%@ page import = "java.sql.Timestamp" %>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.util.*" %>
<%@ page import = "java.io.*" %>f

<%
request.setCharacterEncoding("utf-8");

String	realFolder 	= "";	//웹 어플리케이션 상의 절대 경로
String	filename	= "";
MultipartRequest imageUp = null;

String	saveFolder	= "/imageFile"; //파일이 업로드되는 폴더를 지정한다.
String	encType		= "utf-8";		//인코딩 타입
int		maxSize		= 2*1024*1024;	//최대 업로될 파일의 크기 2MB

//현재 jsp페이지의 웹 어플리케이션상의 절대 경로를 구한다.
ServletContext	context	= getServletContext();
realFolder	= context.getRealPath(saveFolder);

System.out.println("realFolder : " + realFolder);

try {
	//전송을 담당할 컴포넌트를 생성하고 파일을 전송한다.
	//전송할 파일명을 가지고 있는 객체, 서버상의 절대경로, 최대 업로드될 파일크기,
	//문자코드, 기본 보안 적용
	imageUp = new MultipartRequest(
				request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	//전송한 파일 정보를 가져와 출력한다.
	Enumeration<?>	files = imageUp.getFileNames();
	
	//파일 정보가 있다면
	while(files.hasMoreElements()) {
		//input 태그의 속성이 file인 태그의 name속성값: 파라미터 이름
		String name = (String)files.nextElement();
	
		//서버에 저장된 파일 이름
		filename = imageUp.getFilesystemName(name);
	}
} catch(Exception e) {
	e.printStackTrace();
}
%>

<jsp:useBean id="book" scope="page"	class="bookshop.master.ShopBookDataBean">
</jsp:useBean>

<%
System.out.println("=====>"+imageUp.getParameter("book_image"));


String	book_kind		= imageUp.getParameter("book_kind");
String	book_title		= imageUp.getParameter("book_title");
String	book_price		= imageUp.getParameter("book_price");
String	book_count		= imageUp.getParameter("book_count");

String	author			= imageUp.getParameter("author");
String	publishing_com	= imageUp.getParameter("publishing_com");
String	book_content	= imageUp.getParameter("book_content");
String	discount_rate	= imageUp.getParameter("discount_rate");

String	year	= imageUp.getParameter("publishing_year");

//월과 일이 1자리이면 앞에 0을 붙여 2자리로 만든다.
String	month	=
	(imageUp.getParameter("publishing_month").length() == 1) ?
			"0" + imageUp.getParameter("publishing_month") :
			imageUp.getParameter("publishing_month");

String	day	=
	(imageUp.getParameter("publishing_day").length() == 1) ?
			"0" + imageUp.getParameter("publishing_day") :
			imageUp.getParameter("publishing_day");

/*
System.out.println(book_kind);
System.out.println(book_title);
System.out.println(Integer.parseInt(book_price));
System.out.println(Short.parseShort(book_count));

System.out.println(author);
System.out.println(publishing_com);
System.out.println(year + "-" + month + "-" + day);

System.out.println(filename);
System.out.println(book_content);
System.out.println(Byte.parseByte(discount_rate));
System.out.println(new Timestamp(System.currentTimeMillis()));
*/
			
//Form화면에서 가져온 데이터를 DBBean에 보내기 위한 준비를 한다.
book.setBook_kind(book_kind);
book.setBook_title(book_title);
book.setBook_price(Integer.parseInt(book_price));
book.setBook_count(Short.parseShort(book_count));

book.setAuthor(author);
book.setPublishing_com(publishing_com);
book.setPublishing_date(year + "-" + month + "-" + day);

book.setBook_image(filename);
book.setBook_content(book_content);
book.setDiscount_rate(Byte.parseByte(discount_rate));
book.setReg_date(new Timestamp(System.currentTimeMillis()));

ShopBookDBBean bookProcess = ShopBookDBBean.getInstance();
bookProcess.insertBook(book);

response.sendRedirect("bookList.jsp?book_kind="+book_kind);

%>
























