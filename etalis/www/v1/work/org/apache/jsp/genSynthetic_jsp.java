package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class genSynthetic_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      com.etalis.genEventStream gensyn = null;
      synchronized (session) {
        gensyn = (com.etalis.genEventStream) _jspx_page_context.getAttribute("gensyn", PageContext.SESSION_SCOPE);
        if (gensyn == null){
          gensyn = new com.etalis.genEventStream();
          _jspx_page_context.setAttribute("gensyn", gensyn, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"iframe.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");

	String strtmp = request.getParameter("streamsize");
	int streamSize = Integer.parseInt(strtmp);
	
	
	String strtmp1; 
	strtmp1 = request.getParameter("numofparm");
	int numofPar = Integer.parseInt(strtmp1);
	String fileName = "SynTempStream.P";
	gensyn.gen(streamSize,numofPar,fileName);
	String rtn = "Event stream created successfully. To execute the program, press 'Run'.";
	String download = "<br>Download the EventStream source file: <a href=\"download.jsp?filepath=C:\\Documents and Settings\\Administrator\\workspace\\etalis\\src\\examples\\&filename=SynTempStream.P \">SynTempStream.P</a>";
	response.setContentType("text/html");
	response.setHeader("Cache-Control", "no-cache");
	rtn = rtn+download;
	response.getWriter().write(rtn);

      out.write("\r\n");
      out.write("</body></html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
