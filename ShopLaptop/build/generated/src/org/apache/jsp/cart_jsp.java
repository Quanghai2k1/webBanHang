package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/cartCss.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/reset.css\"> \n");
      out.write("    <link rel=\"stylesheet\" href=\"css/grid.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css\" integrity=\"sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\n");
      out.write("    <title>Cart</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"wrapper \">\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"logo-header\">\n");
      out.write("                <a href=\"\" class=\"logo-link\">\n");
      out.write("                    HARIN\n");
      out.write("                </a>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"menu-header\">\n");
      out.write("                <ul class=\"list-header\">\n");
      out.write("                    <li class=\"item-header \"><a href=\"#\" class=\"link-header br\">GIỚI THIỆU</a></li>\n");
      out.write("                    <li class=\"item-header \"><a href=\"#\" class=\"link-header br\">LAPTOP</a></li>\n");
      out.write("                    <li class=\"item-header \"><a href=\"\" class=\"link-header br\">PHỤ KIỆN</a></li>\n");
      out.write("                    <li class=\"item-header \"><a href=\"\" class=\"link-header br\">TIN TỨC</a></li>\n");
      out.write("                    <li class=\"item-header\"><a href=\"\" class=\"link-header\">LIÊN HỆ</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("\n");
      out.write("            <div class=\"search-cart-account\">\n");
      out.write("                <form action=\"\" method=\"post\">\n");
      out.write("                    <div class=\"sca\" id=\"search\">\n");
      out.write("                        <input type=\"text\" class=\"input-search\" placeholder=\" Tìm kiếm\">\n");
      out.write("                        <button type=\"submit\" class=\"button-search\">\n");
      out.write("                            <i class=\"fa-solid fa-magnifying-glass\"></i>\n");
      out.write("                        </button>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                \n");
      out.write("                    \n");
      out.write("                <div class=\"sca\" id=\"cart\">\n");
      out.write("                    <a href=\"\" class=\"link-cart\">\n");
      out.write("                        <i class=\"fa-solid fa-cart-shopping\"></i>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                    \n");
      out.write("                <div class=\"sca\" id=\"account\">\n");
      out.write("                    <a href=\"\" class=\"link-account\">\n");
      out.write("                        <i class=\"fa-solid fa-circle-user\"></i>\n");
      out.write("                        <h3 class=\"name-user\">Quang Hai</h3>\n");
      out.write("                    </a>\n");
      out.write("                    \n");
      out.write("                    <!-- <div class=\"div-infor\">\n");
      out.write("                        <a href=\"\" class=\"cart-shop\">Giỏ hàng</a>\n");
      out.write("                        <a href=\"\" class=\"logout\">Log out</a>\n");
      out.write("                    </div> -->\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"content grid wide\">\n");
      out.write("            <div class=\"content-cart row\">\n");
      out.write("                <div class=\"left-content col l7 m7 c12\">\n");
      out.write("                    <div class=\"product\">\n");
      out.write("                        <table class=\"table-product\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <th class=\"product-name\" colspan=\"3\">SẢN PHẨM</th>\n");
      out.write("                                    <th class=\"product-price\">GIÁ</th>\n");
      out.write("                                    <th class=\"product-quantity\">SỐ LƯỢNG</th>\n");
      out.write("                                    <th class=\"product-sub\">TỔNG CỘNG</th>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                            </tbody>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td class=\"remove\"><i class=\"fa-solid fa-x\"></i></td>\n");
      out.write("                                    <td class=\"thumbnail\"><a href=\"\"><img width=\"50\" height=\"50\" src=\"//mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-300x300.jpg\" class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image\" alt=\"\" srcset=\"//mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-300x300.jpg 300w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-150x150.jpg 150w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-24x24.jpg 24w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-36x36.jpg 36w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-48x48.jpg 48w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600.jpg 600w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-100x100.jpg 100w\" sizes=\"(max-width: 300px) 100vw, 300px\"></a></td>\n");
      out.write("                                    <td class=\"name\">ĐỒNG HỒ LOUIS ERARD 13900AA05</td>\n");
      out.write("                                    <td class=\"price\">100000</td>\n");
      out.write("                                    <td class=\"quantity\">\n");
      out.write("                                        <input type=\"number\" class=\"number\" step=\"1\" min=\"1\" max=\"999\">\n");
      out.write("                                    </td>\n");
      out.write("                                    <td class=\"sub\">100000</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td class=\"remove\"><i class=\"fa-solid fa-x\"></i></td>\n");
      out.write("                                    <td class=\"thumbnail\"><a href=\"\"><img width=\"50\" height=\"50\" src=\"//mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-300x300.jpg\" class=\"attachment-woocommerce_thumbnail size-woocommerce_thumbnail wp-post-image\" alt=\"\" srcset=\"//mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-300x300.jpg 300w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-150x150.jpg 150w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-24x24.jpg 24w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-36x36.jpg 36w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-48x48.jpg 48w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600.jpg 600w, //mauweb.monamedia.net/dongho/wp-content/uploads/2018/03/13900AA05.BDC102-600x600-100x100.jpg 100w\" sizes=\"(max-width: 300px) 100vw, 300px\"></a></td>\n");
      out.write("                                    <td class=\"name\">ĐỒNG HỒ LOUIS ERARD 13900AA05</td>\n");
      out.write("                                    <td class=\"price\">100000</td>\n");
      out.write("                                    <td class=\"quantity\">\n");
      out.write("                                        <input type=\"number\" class=\"number\" step=\"1\" min=\"1\" max=\"999\">\n");
      out.write("                                    </td>\n");
      out.write("                                    <td class=\"sub\">100000</td>\n");
      out.write("                                </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"right-content col l5 m5 c12\">\n");
      out.write("                    <div class=\"cart-sidebar\">\n");
      out.write("                        <div class=\"header-cart\">\n");
      out.write("                            TỔNG SỐ LƯỢNG\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"sub-price\">\n");
      out.write("                            <h2>Tổng cộng</h2>\n");
      out.write("                            <span>19,473,300 ₫</span>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"ship\">\n");
      out.write("                            <h2>Giao hàng</h2>\n");
      out.write("                            <span>Giao hàng miễn phí</span>\n");
      out.write("                        </div>\n");
      out.write("                        <input type=\"text\" class=\"code\" placeholder=\"Mã ưu đãi\">\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"checkout\">\n");
      out.write("                        <a href=\"\" class=\"link-checkout\">Thanh Toán</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</body>\n");
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
