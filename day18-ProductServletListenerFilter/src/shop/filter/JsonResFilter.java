package shop.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter(filterName="jsonResFilter" 
          ,urlPatterns = {"/main/json/*"})
public class JsonResFilter implements Filter {

	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest req
			           , ServletResponse res
			           , FilterChain chain)
			throws IOException, ServletException {

		System.out.println("====== 3. JSON 응답 필터 실행 =======");
		// application/json 타입은 기본 문자셋이 utf-8로 설정됨.
		res.setContentType("application/json");
		
		chain.doFilter(req, res);
		
		System.out.println("====== 3. JSON 응답 필터 종료 =======");
	}

	@Override
	public void init(FilterConfig config) throws ServletException {

	}

}
