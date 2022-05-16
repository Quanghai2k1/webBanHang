package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class detailLap_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <!-- <link rel=\"stylesheet\" href=\"./reset.css\"> -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"./css/detail.css\">  \n");
      out.write("        <link rel=\"stylesheet\" href=\"/grid.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"./font/fontawesome-free-6.1.0-web/css/all.min.css\">\n");
      out.write("        <title>Detail</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("\n");
      out.write("            <div class=\"img-product\">\n");
      out.write("                <h2 class=\"name\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h2>\n");
      out.write("                <h2 class=\"price\">$");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h2>\n");
      out.write("                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"detail\">\n");
      out.write("\n");
      out.write("                <p class=\"description overflow\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.description}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("                </p>\n");
      out.write("                <button  class=\"more\">Xem Thêm</button>\n");
      out.write("                <button  class=\"less dis\">Ẩn Bớt</button>\n");
      out.write("\n");
      out.write("                <div class=\"infor\">\n");
      out.write("                    <p>Thông số kỹ thuật</p>\n");
      out.write("                    <table>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>Màn hình</td>\n");
      out.write("                          <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.manhinh}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>CPU</td>\n");
      out.write("                          <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.cpu}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>RAM</td>\n");
      out.write("                          <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.ram}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>Ổ cứng</td>\n");
      out.write("                          <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.ocung}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>Đồ họa</td>\n");
      out.write("                          <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.dohoa}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>Trọng lượng</td>\n");
      out.write("                          <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.trongluong}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                          <td>kích thước</td>\n");
      out.write("                          <td>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.kichthuoc}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                      </table>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"cart\">\n");
      out.write("                    <button class=\"add\">Thêm vào giỏ hàng</button>\n");
      out.write("                    <button class=\"buy\">Mua ngay</button>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js\" integrity=\"sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.6.0.min.js\" integrity=\"sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function(){\n");
      out.write("                $(\".more\").click(function(){\n");
      out.write("                    $('.description').removeClass('overflow');\n");
      out.write("                    $('.more').addClass('dis');\n");
      out.write("                    $('.less').removeClass('dis');\n");
      out.write("                })\n");
      out.write("            })\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function(){\n");
      out.write("                $(\".less\").click(function(){\n");
      out.write("                    $('.description').addClass('overflow');\n");
      out.write("                    $('.less').addClass('dis');\n");
      out.write("                    $('.more').removeClass('dis');\n");
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
