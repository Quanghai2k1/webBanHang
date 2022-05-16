package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class pay_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/cartCss.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/reset.css\"> \n");
      out.write("        <link rel=\"stylesheet\" href=\"css/grid.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css\" integrity=\"sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("        <title>pay</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"wrapper \">\n");
      out.write("            <div class=\"header\">\n");
      out.write("                <div class=\"logo-header\">\n");
      out.write("                    <a href=\"\" class=\"logo-link\">\n");
      out.write("                        HARIN\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"menu-header\">\n");
      out.write("                    <ul class=\"list-header\">\n");
      out.write("                        <li class=\"item-header \"><a href=\"#\" class=\"link-header br\">GIỚI THIỆU</a></li>\n");
      out.write("                        <li class=\"item-header \"><a href=\"#\" class=\"link-header br\">LAPTOP</a></li>\n");
      out.write("                        <li class=\"item-header \"><a href=\"\" class=\"link-header br\">PHỤ KIỆN</a></li>\n");
      out.write("                        <li class=\"item-header \"><a href=\"\" class=\"link-header br\">TIN TỨC</a></li>\n");
      out.write("                        <li class=\"item-header\"><a href=\"\" class=\"link-header\">LIÊN HỆ</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"search-cart-account\">\n");
      out.write("                    <form action=\"\" method=\"post\">\n");
      out.write("                        <div class=\"sca\" id=\"search\">\n");
      out.write("                            <input type=\"text\" class=\"input-search\" placeholder=\" Tìm kiếm\">\n");
      out.write("                            <button type=\"submit\" class=\"button-search\">\n");
      out.write("                                <i class=\"fa-solid fa-magnifying-glass\"></i>\n");
      out.write("                            </button>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"sca\" id=\"cart\">\n");
      out.write("                        <a href=\"\" class=\"link-cart\">\n");
      out.write("                            <i class=\"fa-solid fa-cart-shopping\"></i>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"sca\" id=\"account\">\n");
      out.write("                        <a href=\"\" class=\"link-account\">\n");
      out.write("                            <i class=\"fa-solid fa-circle-user\"></i>\n");
      out.write("                            <h3 class=\"name-user\">Quang Hai</h3>\n");
      out.write("                        </a>\n");
      out.write("\n");
      out.write("                        <!-- <div class=\"div-infor\">\n");
      out.write("                            <a href=\"\" class=\"cart-shop\">Giỏ hàng</a>\n");
      out.write("                            <a href=\"\" class=\"logout\">Log out</a>\n");
      out.write("                        </div> -->\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"content grid wide\">\n");
      out.write("                <div class=\"content-cart row\">\n");
      out.write("                    <div class=\"left-content col l7 m7 c12\">\n");
      out.write("                        <div class=\"product\">\n");
      out.write("                            <h1>THÔNG TIN THANH TOÁN</h1>\n");
      out.write("\n");
      out.write("                            <div class=\"information\">\n");
      out.write("                                <div class=\"information-input\">\n");
      out.write("                                    <label for=\"name\" class=\"label-name\">Tên</label>\n");
      out.write("                                    <input type=\"text\" id=\"name\" class=\"input-infor\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"information-input\">\n");
      out.write("                                    <label for=\"address\" class=\"label-name\">Địa chỉ</label>\n");
      out.write("                                    <input type=\"text\" id=\"address\" class=\"input-infor\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"information-input\">\n");
      out.write("                                    <label for=\"phone\" class=\"label-name\">Số điện thoại</label>\n");
      out.write("                                    <input type=\"text\" id=\"phone\" class=\"input-infor\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"information-input\">\n");
      out.write("                                    <label for=\"email\" class=\"label-name\">Email</label>\n");
      out.write("                                    <input type=\"text\" id=\"email\" class=\"input-infor\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"information-input\">\n");
      out.write("                                    <label for=\"note\" class=\"label-name\">Chú thích</label>\n");
      out.write("                                    <input type=\"text\" id=\"note\" class=\"input-infor\">\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div> \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"right-content col l5 m5 c12\">\n");
      out.write("                        <div class=\"cart-sidebar\">\n");
      out.write("                            <div class=\"header-cart\">\n");
      out.write("                                <h1>Sản phẩm</h1>\n");
      out.write("                                <h1>Tổng</h1>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"product\">\n");
      out.write("                                <div class=\"product-pay\">\n");
      out.write("                                    <h2 class=\"name-product\">Sản phẩm x</h2> \n");
      out.write("                                    <h2 class=\"quantity\"> 1</h2>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <span class=\"price\">19,473,300 ₫</span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"ship\">\n");
      out.write("                                <h2>Giao hàng</h2>\n");
      out.write("                                <span>Giao hàng miễn phí</span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"ship-pay\">\n");
      out.write("                                <h2>Thanh toán</h2>\n");
      out.write("                                <span>Trả tiền khi nhận hàng</span>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"sum\">\n");
      out.write("                                <h2>Tổng</h2>\n");
      out.write("                                <span>19,473,300 ₫</span>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"checkout\">\n");
      out.write("                            <a href=\"\" class=\"link-checkout\">Đặt Hàng</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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
