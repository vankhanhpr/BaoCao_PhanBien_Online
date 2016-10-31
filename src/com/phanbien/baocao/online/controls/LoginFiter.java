package com.phanbien.baocao.online.controls;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/thong-tin-ca-nhan/*")
public class LoginFiter implements Filter {

	public LoginFiter() {
		super();
	}

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;

		HttpServletResponse response = (HttpServletResponse) res;

		HttpSession session = request.getSession(false);

		String loginURI = request.getContextPath() + "/yeu-cau-dang-nhap";

		boolean isLogined = session != null && session.getAttribute("user") != null;
		boolean loginRequest = request.getRequestURI().equals(loginURI);

		if (isLogined || loginRequest) {
			chain.doFilter(req, res);
		} else {
			response.sendRedirect(loginURI);
		}
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
	}

}
