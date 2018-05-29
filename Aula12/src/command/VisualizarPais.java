package command;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Pais;
import service.PaisService;

public class VisualizarPais implements Command {
	
	@Override
	public void execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pId = request.getParameter("id");
		String pNome = "";
		long pPopulacao = 0;
		double pArea = 0.0;
		int id = -1;
		
		try {
			id = Integer.parseInt(pId);
			pNome = request.getParameter("nome");
			pPopulacao = Long.parseLong(request.getParameter("populacao"));
			pArea = Double.parseDouble(request.getParameter("area"));
			
		} catch (NumberFormatException e) {

		}
		
		Pais pais = new Pais();
		pais.setId(id);
		pais.setNome(pNome);
		pais.setPopulacao(pPopulacao);
		pais.setArea(pArea);
		
		
		PaisService ps = new PaisService();
		pais = ps.carregar(pais.getId());
		
		RequestDispatcher view = request.getRequestDispatcher("VisualizarPais.jsp");
		view.forward(request, response);
	}
}
