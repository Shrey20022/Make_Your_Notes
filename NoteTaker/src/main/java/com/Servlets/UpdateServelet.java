package com.Servlets;

import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Helper.FactoryMaker;
import com.entries.Note;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class UpdateServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public UpdateServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			int noteId=Integer.parseInt(request.getParameter("noteId").trim());
			
			Session s = FactoryMaker.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			Note note=s.get(Note.class,noteId);
			note.setTitle(title);
			note.setContent(content);
			note.setAddDate(new Date());
			
			tx.commit();
			s.close();
			response.sendRedirect("all_notes.jsp");
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
