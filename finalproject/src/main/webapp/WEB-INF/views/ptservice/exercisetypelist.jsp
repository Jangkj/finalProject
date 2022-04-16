<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var setCookie = function(name, value, exp) {
		var date = new Date();
		date.setTime(date.getTime() + exp*24*60*60*1000);
		document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
	};
	var deleteCookie = function(name) {
		document.cookie = name + '=; expires=Thu, 01 Jan 1999 00:00:10 GMT;';
	};
	$(document).on("click", ".click,.delect", function(){//선택운동목록전송
		var event1 = $(this).attr("id"); 
		var event = $(this).attr("class");
		console.log(event1);
		$.ajax({
		    url : "exerciselist",              
		    type : 'POST',          
		    dataType: 'json',
		    success :  function(ptcart){ 
		    	var table = "<table border=3>루틴명:<input type='text' name= pr_info>";
				for(var i = 0; i < ptcart.length; i++){
					table +="<tr><td>" + ptcart[i].et_num + "<td>"
					+ptcart[i].et_name+"<td>"
					+ptcart[i].et_time+"<td>"
					+"<input type='number' name="+ptcart[i].et_ename+" min='0' max='100'><td>"
					+"<p class ='delect' id=d"+ptcart[i].et_ename+">삭제하기</p></td></tr>";
				}//for
				table +="</table><input class='add' type=button value='등록'>";
				$("#ptcart").html(table);
			}//success
		});
		if(event == "click"){
			setCookie(event1,10, 1);
		}
		if(event == "delect"){
			var delectevent = event1.substr(1);
			deleteCookie(delectevent);
		}
	});
		/*  $(document).on("click", ".click", function(){
			var exercisetypepick = $(this).attr("id");
			$.ajax({
				url: "exercisetypepick",
				data : {'exercisetypepick':exercisetypepick}, 
				type : 'get',
				dataType: 'json',
				success : function(){
				}
			});
		}); */
		/* $(document).on("click", ".delect", function(){
			var a = $(this).attr("id");
			$.ajax({
				url: "ptcartdelect",
				data : {'ptcartdelect':a} , 
				type : 'get',
				dataType: 'json',
				success : function(){
				}//success end	
			});//ajax end
		}); 
		$(document).on("click", ".add", function(){
			$.ajax({
				url: "routinadd",
				data : {'ptcartdelect':a} , 
				type : 'get',
				dataType: 'json',
				success : function(){
				}//success end	
			});//ajax end
		});	 */
});
</script>
<div id="pick_et"></div>
<div id="ptcart">선택한 상품은 여기에 표시됩니다</div>
<c:forEach items="${exercisetypelist}" var="dto" >
	<p><img src="images/${dto.et_img1}.jpg"  width="300">
	운동이름 : ${dto.et_name}, 운동레벨 : ${dto.et_lv}운동시간:${dto.et_time}
	<a class="click" id="${dto.et_ename}">click</a>
	</p><br>
</c:forEach>
</body>
</html>