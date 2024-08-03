package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class UpdateNoteServlet
 */
public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateNoteServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			// title,content fetch

			String title = request.getParameter("title");
			String content = request.getParameter("content");
            int NoteId=Integer.parseInt(request.getParameter("NoteId").trim());
			
			

		//System.out.println(note.getId()+" : " +note.getTitle()); 

			// hibernate:save()

			
			  Session s = FactoryProvider.getFactory().openSession();
			  
			  Transaction txd= s.beginTransaction();
			  
			Note note = s.get(Note.class, NoteId);
			
			note.setTitle(title);
			note.setContent(content);
			note.setAddedDate(new Date());
			
			
			
			  txd.commit();
			  s.close();
			  
			  response.sendRedirect("all_notes.jsp");
			  
			  

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
