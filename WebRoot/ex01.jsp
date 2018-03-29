<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			//定义两个数组
			String[] names = new String[] { "李文", "张三", "王五" };
			int[] score = new int[] { 60, 70, 80 };
			for (int i = 0; i < 3; i++) {
		%>
		<%=names[i]%>:<%=score[i]%>分
		<br />
		<%
			}
		%>
		<hr/>
		<%
		    int[] grade = new int[]{70,80};
		%>
		最高成绩：<%=Math.max(grade[0],grade[1]) %><br/>
		最低成绩：<%=Math.max(grade[0],grade[1]) %><br/>
		平均成绩：<%=(grade[0]+ grade[1])/2%><br/>
		成绩差值：<%=Math.abs(grade[0]-grade[1]) %><br/>
		<hr/>
		<%!
		  //声明
		  public String getBirthStr(String id){
			//010020198810092211
			String year = id.substring(6,10);
			String month = id.substring(10,12);
			String day = id.substring(12,14);
			return year+"-"+month+"-"+day;	
		}
		%>
		<h3>根据身份证自动计算生日</h3>
		<table border="1">
		    <tr>
		        <td>010020198810092211</td>
		        <td><%=getBirthStr("010020198810092211") %></td>
		    </tr>
		    <tr>
		        <td>010020199009302211</td>
		        <td><%=getBirthStr("010020199009302211") %></td>
		    </tr>
		</table>
		
	</body>
</html>