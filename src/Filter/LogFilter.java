package Filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class LogFilter implements Filter {

	PrintWriter writer;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		writer.close();
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		String file = filterConfig.getInitParameter("file");
		if (file == null)
			System.out.println("로그 파일의 이름을 찾을 수 없습니다.");

		try {
			writer = new PrintWriter(new FileWriter(file, true), true);
		} catch (Exception e) {
			throw new ServletException("로그 파일을 열 수 없음");
		}

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		writer.printf("현재 일시 : %s %n",getCurrentTime());
		String clientAddr = request.getRemoteAddr();
		writer.printf("클라이언트 주소 : %s %n", clientAddr);
		chain.doFilter(request, response);
		
		String contentType = response.getContentType();
		writer.printf("문서의 콘텐츠 유형 %s %n",contentType);
		
		writer.println("------------------------------------------------");
		
	}

	private Object getCurrentTime() {
		// TODO Auto-generated method stub
		
		DateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		
		return format.format(calendar.getTime());
	}

}
