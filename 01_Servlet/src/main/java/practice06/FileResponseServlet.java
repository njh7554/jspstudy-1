package practice06;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FileResponseServlet")

public class FileResponseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/*
			1. 전달 받은 파일을 이용해서 경고창 만들기
				예시) 2023-03-17-민경태-금요일이다.txt 파일이 생성되었습니다.
			
			2. 작성 화면으로 돌아가기
				client.html로 이동하기
		*/
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
