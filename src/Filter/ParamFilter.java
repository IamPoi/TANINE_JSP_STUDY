package Filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class ParamFilter implements Filter {
	private FilterConfig filterConfig = null;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("Filter02 ����");
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter02 �ʱ�ȭ");
		this.filterConfig = filterConfig;

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("Filter02 ����");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		String par1 = filterConfig.getInitParameter("par1");
		String par2 = filterConfig.getInitParameter("par2");

		String message;

		response.setCharacterEncoding("EUC-KR");
		response.setContentType("text/html; charset=EUC-KR");

		PrintWriter writer = response.getWriter();

		if (id.equals(par1) && pw.equals(par2)) {
			message = "�α��� ����";
		} else {
			message = "�α��� ����";
		}

		writer.print(message);

		chain.doFilter(request, response);

	}

}
