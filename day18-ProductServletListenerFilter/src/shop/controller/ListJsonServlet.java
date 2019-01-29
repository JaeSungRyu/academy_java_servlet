package shop.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import shop.dao.GeneralWarehouse;
import shop.vo.Product;

/**
 * 제품 전체 목록을 조회하는 서블릿
 */
@WebServlet({"/main/json/list"})
public class ListJsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request
			           , HttpServletResponse response) 
			        		   throws ServletException, IOException {
		
		// 2. 조회에 필요한 객체 선언
		GeneralWarehouse warehouse;
		warehouse = (GeneralWarehouse) getServletContext()
                                      .getAttribute("warehouse");
		
		// 3. 조회 결과를 request 에 속성으로 추가
		List<Product> products = warehouse.getAllProducts();
		request.setAttribute("products", products);
		
		// 4. 조회 결과가 추가된 request 를
		//    JSON 형식으로 바꾸어 바로 출력함
		ObjectMapper mapper = new ObjectMapper();
		String productJson = mapper.writeValueAsString(products);
		
		// 
		PrintWriter out = response.getWriter();
		out.print(productJson);
		out.flush();
		out.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
