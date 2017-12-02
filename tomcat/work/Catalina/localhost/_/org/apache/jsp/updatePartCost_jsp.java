package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class updatePartCost_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = JspFactory.getDefaultFactory().getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    JspFactory _jspxFactory = null;
    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      _jspxFactory = JspFactory.getDefaultFactory();
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\t\t<title>Update Part Cost</title>\n");
      out.write("\t\t<style>\n");
      out.write("\t\t\tbutton {\n");
      out.write("\t\t\t    background-color: #4CAF50;\n");
      out.write("\t\t\t    color: white;\n");
      out.write("\t\t\t    padding: 14px 20px;\n");
      out.write("\t\t\t    margin: 8px 0;\n");
      out.write("\t\t\t    border: none;\n");
      out.write("\t\t\t    cursor: pointer;\n");
      out.write("\t\t\t    width: auto;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\t.bloc { \n");
      out.write("\t\t\t\tdisplay:inline; \n");
      out.write("\t\t\t\tvertical-align:top; \n");
      out.write("\t\t\t\toverflow:scroll; \n");
      out.write("\t\t\t\tborder:solid grey 1px; \n");
      out.write("\t\t\t\toverflow-x: hidden;\n");
      out.write("\t\t\t\tposition: absolute;\n");
      out.write("\t\t\t}\t\n");
      out.write("\t\t</style>\n");
      out.write("\t</head>\n");
      out.write("\t<body>\n");
      out.write("\t<div id=\"updatePartCostBox\">\n");
      out.write("\n");
      out.write("\t<center>\n");
      out.write("\t\t<h2>Update Part Cost</h2>\n");
      out.write("\t\t<form action=\"updatePartCost.jsp\" method=\"post\">\n");
      out.write("\t\t\t<fieldset id = \"field1\">\n");
      out.write("\t\t\t\t<legend>Enter Information:</legend>\t\t\t\t\n");
      out.write("\t\t\t\t<h3>Choose Part:\n");
      out.write("\t\t\t\t\t  <select class=\"bloc\" name=\"partSelect\" id=\"partSelect\" \n");
      out.write("\t\t\t\t\t\t      onfocus='this.size=5;' onblur='this.size=1;' \n");
      out.write("\t\t\t\t\t\t      onchange='this.size=1; this.blur();'>\n");
      out.write("\t\t\t\t\t\t");

							request.setCharacterEncoding("utf-8");
							response.setContentType("text/html;charset=utf-8");
							out.write("<option value=\"\" ></option>");
							out.write("<option value=\"2010\" >2010</option>");
							out.write("<option value=\"2011\" >2011</option>");
							out.write("<option value=\"2012\" >2012</option>");
							out.write("<option value=\"2013\" >2013</option>");
							out.write("<option value=\"2014\" >2014</option>");							
							out.write("<option value=\"2015\" >2015</option>");
							out.write("<option value=\"2016\" >2016</option>");		
							out.write("<option value=\"2017\" >2017</option>");	
						
      out.write("\n");
      out.write("\t\t\t\t\t   </select>\t\t\t\n");
      out.write("\t\t\t\t</h3>\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t<h3>Enter Part Price: \n");
      out.write("\t\t\t\t\t<input type=\"text\" name=\"partPrice\" value=\"\" onkeypress=\"this.style.width = ((this.value.length + 2) * 8) + 'px';\">\n");
      out.write("\t\t\t\t</h3>\t\t\t\t\n");
      out.write("\t\t\t</fieldset>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<br>\n");
      out.write("\n");
      out.write("\t\t\t<button type=\"submit\" id=\"submitBtn\" name=\"submitBtn\"> Add The Part</button>\n");
      out.write("\t\t</form>\n");
      out.write("\t</center>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\t");
	
	if (request.getParameter("submitBtn") == null){
		return;
	}
	
	String partName = request.getParameter("partSelect");

	String partPrice = request.getParameter("partPrice");
	
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	out.println("<script type=\"text/javascript\">");
	out.println("alert('" + partName + "');");
	out.println("location='updatePartCost.jsp';");
	out.println("</script>");
	
      out.write("\n");
      out.write("\t\n");
      out.write("\t</body>\n");
      out.write("\t\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      if (_jspxFactory != null) _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
