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
	var sendMsg = [];
	var sendMsg2 = [1,2,3];
	$(".click").on('click', function(){//선택운동목록나타냄
		var getClass=$(this).attr("id");
		sendMsg.push(getClass);
		$.ajax({
		    url : "exercisetypepick",              
		    type : 'POST',          
		    traditional : true,
		    data : {
		        sendMsg : sendMsg  
		    },
		    success :  function(list){ 
		    	ptroutine_pick="<form action='exerciselist' method = 'post'>루틴이름: <input type='text' name='rs_name'><br>";
				for(var i = 0; i < list.length; i++){
					ptroutine_pick+=
					"<div><input type='hidden' id='gameToken' name='routine"+i+"' value='list[i].et_ename'>운동이름 :"+list[i].et_name 
					+",영문명 :"+list[i].et_ename
					+" met :"+list[i].et_met 
					+" 운동레벨 :"+list[i].et_lv 
					+" 운동시간 :"+ list[i].et_time
					+" 소모칼로리 :"+ list[i].et_time
					+"<input type='number' name='time"+i+"' value='"+list[i].et_num+"' min='0' max='100'><a>삭제하기</a><div>";
				};
				ptroutine_pick +="<input type='submit' value='루틴 생성하기'>";
				$("#pick_et").html(ptroutine_pick);
			}//success end	
		});	
	});//on end	
});
</script>
<div id="pick_et"></div>
<c:forEach items="${exercisetypelist}" var="dto" >
	<p><img src="images/${dto.et_img1}.jpg"  width="300">운동이름 : ${dto.et_name}, 운동레벨 : ${dto.et_lv}운동시간:${dto.et_time}<a class="click" id="${dto.et_ename}">click</a>
	</p><br>
</c:forEach>
</body>
</html>