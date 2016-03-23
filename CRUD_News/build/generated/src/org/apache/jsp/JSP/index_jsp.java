package org.apache.jsp.JSP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.DataAccess;
import model.User;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.sql.*;
import java.util.List;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_set_var_value_nobody.release();
    _jspx_tagPool_c_if_test.release();
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                \n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Side Nav</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            \n");
      out.write("            * {\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            body {\n");
      out.write("                font-family: Open Sans, Arial, sans-serif;\n");
      out.write("                overflow-x: hidden;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            nav {\n");
      out.write("                position: fixed;\n");
      out.write("                z-index: 1000;\n");
      out.write("                top: 0;\n");
      out.write("                bottom: 0;\n");
      out.write("                width: 200px;\n");
      out.write("                background-color: #036;\n");
      out.write("                transform: translate3d(-200px, 0, 0);\n");
      out.write("                transition: transform 0.4s ease;\n");
      out.write("            }\n");
      out.write("            .active-nav nav {\n");
      out.write("                transform: translate3d(0, 0, 0);\n");
      out.write("            }\n");
      out.write("            nav ul {\n");
      out.write("                list-style: none;\n");
      out.write("                margin-top: 100px;\n");
      out.write("            }\n");
      out.write("            nav ul li a {\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: block;\n");
      out.write("                text-align: center;\n");
      out.write("                color: #fff;\n");
      out.write("                padding: 10px 0;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .nav-toggle-btn {\n");
      out.write("                display: block;\n");
      out.write("                position: absolute;\n");
      out.write("                left: 200px;\n");
      out.write("                width: 40px;\n");
      out.write("                height: 40px;\n");
      out.write("                background-color: #666;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .content {\n");
      out.write("                padding-top: 100px;\n");
      out.write("                height: 2000px;\n");
      out.write("                background-color: #ccf;\n");
      out.write("                transition: transform 0.4s ease;\n");
      out.write("            }\n");
      out.write("            .active-nav .content {\n");
      out.write("                transform: translate3d(200px, 0, 0);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("             \n");
      out.write("        <div class=\"content\" >\n");
      out.write("        <body>\n");
      out.write("        \n");
      out.write("        <br>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("                ");
 boolean loggedIn = false; 
      out.write("\n");
      out.write("                ");
 String email = ""; 
      out.write("\n");
      out.write("        \n");
      out.write("                ");
      //  c:forEach
      org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
      _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
      _jspx_th_c_forEach_0.setParent(null);
      _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${AllUser}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
      _jspx_th_c_forEach_0.setVar("p");
      int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
      try {
        int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
        if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\n");
            out.write("                    ");
            //  c:if
            org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
            _jspx_th_c_if_0.setPageContext(_jspx_page_context);
            _jspx_th_c_if_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
            _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.loggedIn == 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
            int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
            if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
              do {
                out.write("\n");
                out.write("                        ");
 loggedIn = true; 
                out.write("\n");
                out.write("                        ");
                if (_jspx_meth_c_set_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
                  return;
                out.write("\n");
                out.write("                        <div style=\"margin-left: 25%;\">\n");
                out.write("                            <h1>Logged In, Welcome: ");
                out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
                out.write(" - ");
                out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.email}", java.lang.String.class, (PageContext)_jspx_page_context, null));
                out.write("</h1>\n");
                out.write("                            <br>\n");
                out.write("                            <a href=\"/DbSystems/CreateRequest\">Request Help</a>\n");
                out.write("                            <br>\n");
                out.write("                            <a href=\"/DbSystems/CreateSupportType\">Create Support Type</a>\n");
                out.write("                            <br>\n");
                out.write("                            <a href=\"/DbSystems/ViewRequests\">View Requests</a>\n");
                out.write("                        </div>\n");
                out.write("                    ");
                int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
                if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
                  break;
              } while (true);
            }
            if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
              _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
              return;
            }
            _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
            out.write("\n");
            out.write("                ");
            int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_forEach_0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_forEach_0.doFinally();
        _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
      }
      out.write("\n");
      out.write("\n");
      out.write("                ");

                    if(loggedIn){ 
      out.write("\n");
      out.write("                        ");
 email = pageContext.getAttribute("email").toString(); 
      out.write("\n");
      out.write("                ");

                    }
                    else{ 
      out.write("\n");
      out.write("                    <div style=\"margin-left: 25%;\">\n");
      out.write("                        <h1>Welcome, You Must Log In or Create An Account</h1>\n");
      out.write("                    </div>\n");
      out.write("                    <br>\n");
      out.write("                    <br>\n");
      out.write("                    <br>\n");
      out.write("                    \n");
      out.write("                        <div style=\"width: 900px; margin-left: 40%; margin-right: auto\">\n");
      out.write("                            <h3>Log In</h3>\n");
      out.write("                            <br>\n");
      out.write("                            <form name=\"myForm\" action=\"LogIn\" method=\"post\">\n");
      out.write("                                Email:<br>\n");
      out.write("                                <input type=\"email\" name=\"email\" style=\"width: 200px\" required><br>\n");
      out.write("                                Password:<br>\n");
      out.write("                                <input type=\"password\" name=\"password\" style=\"width: 200px\" required><br>\n");
      out.write("\n");
      out.write("                                <input type=\"submit\" value=\"Submit\">\n");
      out.write("                            </form>\n");
      out.write("                            <!--Complete Interface Addnew.-->\n");
      out.write("                        </div>\n");
      out.write("                    <br>\n");
      out.write("                    <br>\n");
      out.write("                        <div style=\"width: 900px; margin-left: 40%; margin-right: auto\">\n");
      out.write("                            <h3>Sign Up</h3>\n");
      out.write("                            <br>\n");
      out.write("                            <form name=\"myForm\" action=\"JSP/SignUp.jsp\" method=\"post\">\n");
      out.write("                                <input type=\"submit\" value=\"Sign Up\">\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    ");

                    }
                    
                
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <nav>\n");
      out.write("            \n");
      out.write("            <a href=\"#\" class=\"nav-toggle-btn\"></a>\n");
      out.write("            \n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"/DbSystems/index\">Home</a></li>\n");
      out.write("                \n");
      out.write("                ");

                    if(loggedIn){ 
                
      out.write("\n");
      out.write("                        ");
 email = pageContext.getAttribute("email").toString(); 
      out.write("\n");
      out.write("                        <li><a href=\"/DbSystems/LogOut?email=");
      out.print(email);
      out.write("\">Log Out</a><li>\n");
      out.write("                ");

                    }
                    else{
                
      out.write("\n");
      out.write("                        <li><a href=\"/DbSystems/LogIn.html\">Log In</a></li>\n");
      out.write("                        <li><a href=\"/DbSystems/JSP/SignUp.jsp\">Sign Up</a></li>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("            </ul>\n");
      out.write("            \n");
      out.write("        </nav>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        \n");
      out.write("        (function() {\n");
      out.write("            \n");
      out.write("            var bodyEl = $('body'),\n");
      out.write("                navToggleBtn = bodyEl.find('.nav-toggle-btn');\n");
      out.write("            \n");
      out.write("            navToggleBtn.on('click', function(e) {\n");
      out.write("                bodyEl.toggleClass('active-nav');\n");
      out.write("                e.preventDefault();\n");
      out.write("            });\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        })();\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
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

  private boolean _jspx_meth_c_set_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_set_0.setVar("email");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${p.email}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }
}
