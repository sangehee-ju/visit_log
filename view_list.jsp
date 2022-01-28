<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="q" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<head>	
<style>	
/* font및 box */
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Outfit:wght@200&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html, body{
  height: 100%;
  width: 100%;
}

body{
  background-color: ghostwhite;
}

a{
	text-decoration: none;
	color: #0f0f0f;
}

.font-h{
  font-family: 'Do Hyeon', sans-serif;
}

.font-t{
  font-family: 'Outfit', sans-serif;
  font-weight:bold;
}
/* 헤더 - title */
.header{
  color: #6a89cc;
  height: 100px;
  font-size: 45px;
  text-align: center;
  line-height: 100px;
  border-bottom: 2px solid #4a69bd;
  width: 30%;
  
  margin: auto;
}

.header span{
  text-shadow: 1px 1px 2px#636e72;
}

/*content - list*/
.content{
  height: 100%;
  width: 100%;
  align-content: center;
  padding: 20px;
}

table{
  width: 70%;
  border-collapse: collapse;
  margin: auto;
}

table td{
  padding:10px;
}

td span{			
	font-size:15px;
}
/*테이블 헤더 */
table .th{
  background-color: #6a89cc;
  color: ghostwhite;
  text-align:center;
}
table #no{
  width: 40px;
  border-right: 1px solid #dfe6e9;
}

/*테이블 바디*/
table .no{
	border-right: 1px solid #6a89cc;
	text-align:center;
}

table .row{
	border-bottom : 1px solid #6a89cc;
}

/*입력창*/
.comment{
	width:70%;
	margin:auto;
}
#go{
  width:60%;
  height: 120px;
  border: 2px solid #2d3436;
  text-align: center;
  line-height: 120px;
  margin: auto;
  margin-top: 20px;
}
#data{
  width: 200px;
  height: 45px;
  border: 2px solid #4a69bd;
}
#submit{
  background-color: #4a69bd;
  width: 80px;
  height: 45px;
  border: none;
  color: ghostwhite;
}
/*footer*/
.palette{
  margin-top: 50px;
  background-color: #7f8fa6;
  height: 80px;
}
.btn{
  width: 40px;
  height: 40px;
  margin-top: 20px;
  border-radius: 40px;
  border: 2px solid #0f0f0f;
}

#first{
  margin-left:10px;
}
</style>
  <script type="text/javascript">
  	function palette(id){
	  	let btn = document.getElementById(id);
	  	let body = document.body;
	  	body.style.backgroundColor = btn.style.backgroundColor;
	}
  </script>
</head>
<body>
  <div class="header font-h">&#128234<span>VisitLog</span><p></p></div>
  <div class="content">
    <table class="font-h">
      <tr>
        <td class="th" id="no">No.</td>
        
        <td class="th" id="item">content</td>
      </tr>
      <q:forEach items="${list}" var="t">
      	<tr>
      		<td class="row no">
      			${t.no}
      		</td>
      		<td class="row">
      			${t.content}<span><a href="delete.pknu?no=${t.no}">&#128293</a></span>
      		</td>
      	</tr>
      </q:forEach>
    </table>
  </div>
  <div class="comment font-h">
  	<details>
  		<summary>댓글 작성 하기&#128221</summary>
  		<div id="go">
      		<form method="post" action="add.pknu">
        		<input type="text" name="content" id="data" class="font-h">
        		<input type="submit" id="submit" class="font-h" value="작성"/>
      		</form>
   		</div>
  	</details>
  </div>
  
  <div class="palette">
    <input class="btn" id="first" type="button" style="background-color: #ff5330;" onclick="palette(id);"/>
    <input class="btn" id="second" type="button" style="background-color: #F6781D;" onclick="palette(id);"/>
    <input class="btn" id="third" type="button" style="background-color: #fad710;" onclick="palette(id);"/>
    <input class="btn" id="fourth" type="button" style="background-color: #4D826c;" onclick="palette(id);"/>
    <input class="btn" id="fifth" type="button" style="background-color: #2C54A3;" onclick="palette(id);"/>
    <input class="btn" id="sixth" type="button" style="background-color: #003959;" onclick="palette(id);"/>
    <input class="btn" id="seventh" type="button" style="background-color: #6767AB;" onclick="palette(id);"/>
    <input class="btn" id="eigth" type="button" style="background-color: #27262B;" onclick="palette(id);"/>
    <input class="btn" id="nineth" type="button" style="background-color: #F7F7F7;" onclick="palette(id);"/>
  </div>
</body>
</html>