package hu.mik.java2.book.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import hu.mik.java2.book.bean.Book;
import hu.mik.java2.service.BookService;
import hu.mik.java2.service.ServiceUtils;

@WebServlet(urlPatterns="/book_delete")
public class BookDeleteServlet extends HttpServlet{
	private static final long serialVersionUID=1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BookService bookService=ServiceUtils.getBookService();
		Book book=new Book();
		Integer bookId =new Integer (req.getParameter("bookId"));
		book=bookService.getBookById(bookId);
			
	    req.setAttribute("book", book);
			
	    RequestDispatcher requestDispatcher=req.getRequestDispatcher("/book_delete.jsp");
		requestDispatcher.forward(req, resp);
			
		
	}
	
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	Book book=new Book();
    	try {
			BeanUtils.populate(book, req.getParameterMap());
    	} catch (IllegalAccessException | InvocationTargetException e) {
			throw new RuntimeException(e); 
		}
		
		BookService bookService= ServiceUtils.getBookService();
		
		bookService.deleteBook(book);
		
		req.setAttribute("book", book);
		
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("/book_details.jsp");
				
		requestDispatcher.forward(req, resp);
    }

}