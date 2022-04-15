<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		//jquery code
	});
</script>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
 <c:choose>
         <c:when test="${productlist!=null && pageInfo.listCount>0 }">
            <section id="listForm">

               <!-- <h2 class="mb-5"
                  style="text-decoration: underline; text-underline-position: under;">재고
                  관리</h2> -->
               <form action="productlist" method="get">
                  <input type="text" id="search_text" name="search_text" /> <input
                     type="submit" value="찾기" class="btn btn-outline-success"
                     style="padding-left: 10px; padding-right: 10px; padding-top: 6.5; padding-top: 6.5; padding-top: 6.5; padding-top: 6px; padding-bottom: 7px;" />
               </form> 

               <div class="table-responsive">

                  <table class="table custom-table">
                     <thead>
                        <tr>
                           <th scope="col">상품번호</th>
                           <th scope="col">상품이름</th>
                           <th scope="col">상품가격</th>
                           <th scope="col">상품이미지</th>
                           <th scope="col">상품재고</th>
                        </tr>
                     </thead>
                     <tbody>
                        <c:forEach items="${productlist }" var="dto">
                         
                          <tr>
                              <td><a href ="productdetail?num=${dto.prod_num }">${dto.prod_num }   </a></td> 
                              <td><a href ="productdetail?num=${dto.prod_num }">${dto.prod_title } </a></td>
                              <td><a href ="productdetail?num=${dto.prod_num }">${dto.prod_price } </a></td>
                              <td><a href ="productdetail?num=${dto.prod_num }">${dto.prod_img_name }   </a></td>
                              <td><a href ="productdetail?num=${dto.prod_num }">${dto.prod_inventory} </a></td>
                           </tr>
                          
                        </c:forEach>
                     </tbody>

						</table>
					</div>
				</section>
				<section id="pageList" style="text-align: center;">
					<c:choose>
						<c:when test="${pageInfo.page<=1}">
					[이전]&nbsp;
				</c:when>
						<c:otherwise>
							<a
								href="productlist?page=${pageInfo.page-1}&search_text=${search_text}">[이전]</a>&nbsp;
				</c:otherwise>
					</c:choose>
					<c:forEach var="i" begin="${pageInfo.startPage }"
						end="${pageInfo.endPage }">
						<c:choose>
							<c:when test="${pageInfo.page==i }">[${i }]</c:when>
							<c:otherwise>
								<a href="productlist?page=${i}&search_text=${search_text}">[${i }]</a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${pageInfo.page>=pageInfo.maxPage }">
					[다음]
				</c:when>
						<c:otherwise>
							<a
								href="productlist?page=${pageInfo.page+1}&search_text=${search_text}">[다음]</a>
						</c:otherwise>
					</c:choose>
					</section>
					</c:when>
			<c:otherwise>
				<form action="productlist" method="get">
					<input type="text" id="search_text" name="search_text" /> <input
						type="submit" value="찾기" 
						class="btn btn-outline-success"
							style="padding-left: 10px; padding-right: 10px; padding-top: 6.5; padding-top: 6.5; padding-top: 6.5; padding-top: 6px; padding-bottom: 7px;" />
				</form>
				<section id="emptyArea">구독 회원이 없습니다.</section>
			</c:otherwise>
		</c:choose>

</body>
</html>