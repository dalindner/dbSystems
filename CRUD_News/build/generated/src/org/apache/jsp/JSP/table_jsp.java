package org.apache.jsp.JSP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class table_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n");
      out.write("<html>\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("\t\t<title>Untitled Document</title>\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"../sorter/themes/blue/style.css\" type=\"text/css\" id=\"\" media=\"print, projection, screen\" />\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"../sorter/jquery-latest.js\"></script>\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"../sorter/jquery.tablesorter.js\"></script>\n");
      out.write("\t\t<script type=\"text/javascript\">\n");
      out.write("\t\t$(function() {\n");
      out.write("\t\t\t$(\"table\").tablesorter({debug: true});\n");
      out.write("\t\t});\n");
      out.write("\t\t</script>\n");
      out.write("\t</head>\n");
      out.write("\t<body>\n");
      out.write("\n");
      out.write("\n");
      out.write("<input class=\"search\" type=\"search\" data-column=\"all\"> (Match any column)<br>\n");
      out.write("<input class=\"search\" type=\"search\" data-column=\"1\"> (First Name; fuzzy search... try \"be\")<br>\n");
      out.write("\n");
      out.write("<!-- targeted by the \"filter_reset\" option -->\n");
      out.write("<button type=\"button\" class=\"reset\">Reset Search</button>\n");
      out.write("\n");
      out.write("<table class=\"tablesorter\">\n");
      out.write("  <thead>\n");
      out.write("    <tr>\n");
      out.write("      <th>Rank</th>\n");
      out.write("      <th data-placeholder=\"Fuzzy search\">First Name</th>\n");
      out.write("      <th>Last Name</th>\n");
      out.write("      <th>Age</th>\n");
      out.write("      <th>Total</th>\n");
      out.write("      <th>Discount</th>\n");
      out.write("      <th>Date</th>\n");
      out.write("    </tr>\n");
      out.write("  </thead>\n");
      out.write("  <tbody>\n");
      out.write("    <tr><td>1</td><td>Philip Aaron</td><td>Johnson Sr Esq</td><td>25</td><td>$5.95</td><td>22%</td><td>Jun 26, 2004 7:22 AM</td></tr>\n");
      out.write("    <tr><td>11</td><td>Aaron</td><td>Hibert</td><td>12</td><td>$2.99</td><td>5%</td><td>Aug 21, 2009 12:21 PM</td></tr>\n");
      out.write("    <tr><td>12</td><td>Brandon Clark</td><td>Henry Jr</td><td>51</td><td>$42.29</td><td>18%</td><td>Oct 13, 2000 1:15 PM</td></tr>\n");
      out.write("    <tr><td>111</td><td>Peter</td><td>Parker</td><td>28</td><td>$9.99</td><td>20%</td><td>Jul 6, 2006 8:14 AM</td></tr>\n");
      out.write("    <tr><td>21</td><td>John</td><td>Hood</td><td>33</td><td>$19.99</td><td>25%</td><td>Dec 10, 2002 5:14 AM</td></tr>\n");
      out.write("    <tr><td>013</td><td>Clark</td><td>Kent Sr.</td><td>18</td><td>$15.89</td><td>44%</td><td>Jan 12, 2003 11:14 AM</td></tr>\n");
      out.write("    <tr><td>005</td><td>Bruce</td><td>Almighty Esq</td><td>45</td><td>$153.19</td><td>44%</td><td>Jan 18, 2021 9:12 AM</td></tr>\n");
      out.write("    <tr><td>10</td><td>Alex</td><td>Dumass</td><td>13</td><td>$5.29</td><td>4%</td><td>Jan 8, 2012 5:11 PM</td></tr>\n");
      out.write("    <tr><td>16</td><td>Jim</td><td>Franco</td><td>24</td><td>$14.19</td><td>14%</td><td>Jan 14, 2004 11:23 AM</td></tr>\n");
      out.write("    <tr><td>166</td><td>Bruce Lee</td><td>Evans</td><td>22</td><td>$13.19</td><td>11%</td><td>Jan 18, 2007 9:12 AM</td></tr>\n");
      out.write("    <tr><td>100</td><td>Brenda Lee</td><td>McMasters</td><td>18</td><td>$55.20</td><td>15%</td><td>Feb 12, 2010 7:23 PM</td></tr>\n");
      out.write("    <tr><td>55</td><td>Dennis</td><td>Bronson</td><td>65</td><td>$123.00</td><td>32%</td><td>Jan 20, 2001 1:12 PM</td></tr>\n");
      out.write("    <tr><td>9</td><td>Martha</td><td>delFuego</td><td>25</td><td>$22.09</td><td>17%</td><td>Jun 11, 2011 10:55 AM</td></tr>\n");
      out.write("  </tbody>\n");
      out.write("</table>\n");
      out.write("\n");
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
