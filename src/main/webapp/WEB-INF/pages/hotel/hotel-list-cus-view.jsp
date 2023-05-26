<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<section class="hh-city-cus">
  <div class="cmn-inner">
    <h2>Enjoy Your Dream Vacation</h2>
    <div class="hh-search">
      <form action="hotelByCityName" method="post">
        <label for="city">Select Location :</label> <select
          name="selectedCity">
          <option>Location</option>
          <c:forEach items="${cityList}" var="city">
            <option value="${city}">${city}</option>
          </c:forEach>
        </select> <input class="cmn-btn" type="submit" value="Search">
      </form>
    </div>
  </div>
</section>

<section class="hh-hotels-cus">
  <div class="cmn-inner">
    <c:forEach items="${hotelList}" var="h" varStatus="status">
      <div class="hotel-blk clearfix">
        <img
          src="${pageContext.request.contextPath}/resources/img/hotel-images/${h.hotelImg}"
          alt="Hotel Image">
        <div class="hotel-txt-rblk">
          <div class="hotel-ttl-blk">
            <h3>${h.hotelName}</h3>
            <p>
              <c:forEach var="i" begin="1" end="${h.rating}">
                <img alt="Rating Image"
                  src="<%=request.getContextPath()%>/resources/img/img_rating_star.jpg">
              </c:forEach>
            </p>
          </div>
          <p class="txt">
            Address :
            <c:out value="${h.address}" />
          </p>
          <p class="txt">
            City :
            <c:out value="${h.city}" />
          </p>
          <p class="txt">
            Phone No :
            <c:out value="${h.phone}" />
          </p>
          <a class="cmn-btn" href="viewRoomByHotelId?id=${h.hotelId}">View
            Rooms</a>
        </div>
      </div>
    </c:forEach>
  </div>
</section>