package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("            <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\" integrity=\"sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("            <div class=\"sign-in sign\">\n");
      out.write("                <p id=\"qs\">Bạn đã có tài khoản?</p>\n");
      out.write("                <form action=\"signin\" method=\"post\">\n");
      out.write("                    <p id=\"alert\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mess}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                    <input class=\"UP\" type=\"text\" name=\"user\" id=\"user\" placeholder=\"Username\">\n");
      out.write("                    <input class=\"UP\" type=\"password\" name=\"pass\" id=\"pass\" placeholder=\"Password\">\n");
      out.write("                    <input type=\"submit\" value=\"Sign In\" name=\"signin\" class=\"button-sign\">\n");
      out.write("                </form>\n");
      out.write("                <div class=\"remember-forgot\">\n");
      out.write("                    <div class=\"remember\">\n");
      out.write("                        <input id=\"remember\" value=\"Remember\" type=\"checkbox\" name=\"remember\"> <span>Remember Me</span>\n");
      out.write("                    </div>\n");
      out.write("                    <a href=\"\" id=\"forgot\">Forgot Password</a>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <p id=\"or\">--Or Sign in With--</p>\n");
      out.write("                <div class=\"face-google\">\n");
      out.write("                    <button id=\"face\">Facebook</button>\n");
      out.write("                    <button id=\"Google\">Google</button>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <p id=\"qs1\">--Nếu đã có tài khoản--</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"sign-up sign\">\n");
      out.write("                <p id=\"qs\">Bạn chưa có tài khoản?</p>\n");
      out.write("                <p id=\"alert\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mess}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                <form action=\"signup\" method=\"post\">\n");
      out.write("                    \n");
      out.write("                    <input class=\"UP\" type=\"text\" name=\"user\" id=\"user\" placeholder=\"Username\">\n");
      out.write("                    <input class=\"UP\" type=\"password\" name=\"pass\" id=\"pass\" placeholder=\"Password\">\n");
      out.write("                    <input class=\"UP\" type=\"password\" name=\"repass\" id=\"repass\" placeholder=\"Re-Password\">\n");
      out.write("                    <input type=\"submit\" value=\"Sign Up\" class=\"button-sign\">\n");
      out.write("\n");
      out.write("                </form>\n");
      out.write("                <p id=\"qs1\">--Nếu đã có tài khoản--</p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <button id=\"but-toggle\">Sign in / Sign up</button>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function(){\n");
      out.write("                $(\".sign-up\").hide();\n");
      out.write("\n");
      out.write("                $(\"#but-toggle\").click(function(){\n");
      out.write("                    $(\".sign-in,.sign-up\").toggle();\n");
      out.write("                })\n");
      out.write("            })\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
