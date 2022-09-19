package com.Servlets;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Helper.FactoryMaker;
import com.entries.Note;


public class Deleteservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Deleteservelet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			int noteId =Integer.parseInt(request.getParameter("note_id").trim());
			Session s = FactoryMaker.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			Note note=(Note)s.get(Note.class,noteId);
			s.delete(note);
			tx.commit();
			s.close();
			response.sendRedirect("all_notes.jsp");
			
		}catch(Exception e) {
			
		}
	}

	


}
