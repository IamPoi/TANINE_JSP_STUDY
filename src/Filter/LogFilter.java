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
			System.out.println("�α� ������ �̸��� ã�� �� �����ϴ�.");

		try {
			writer = new PrintWriter(new FileWriter(file, true), true);
		} catch (Exception e) {
			throw new ServletException("�α� ������ �� �� ����");
		}

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		writer.printf("���� �Ͻ� : %s %n",getCurrentTime());
		String clientAddr = request.getRemoteAddr();
		writer.printf("Ŭ���̾�Ʈ �ּ� : %s %n", clientAddr);
		chain.doFilter(request, response);
		
		String contentType = response.getContentType();
		writer.printf("������ ������ ���� %s %n",contentType);
		
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
