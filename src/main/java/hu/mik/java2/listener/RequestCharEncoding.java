package hu.mik.java2.listener;

import java.io.UnsupportedEncodingException;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

public class RequestCharEncoding implements ServletRequestListener{

	@Override
	public void requestDestroyed(ServletRequestEvent servletRequestEvent) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void requestInitialized(ServletRequestEvent servletRequestEvent) {
		
		try {
			servletRequestEvent.getServletRequest().setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException(e);
		}
		
	}

}
