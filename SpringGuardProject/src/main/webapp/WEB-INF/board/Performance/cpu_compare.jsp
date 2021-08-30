<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
  	<!-- root Route -->
	<c:set var="root" value="${pageContext.request.contextPath}" />
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
  <link rel="apple-touch-icon" sizes="76x76" href="${root}/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${root}/assets/img/favicon.png">
  <title>
    GUARD TECH
  </title>

  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
  <!-- Nucleo Icons -->
  <link href="${root}/css/nucleo-icons.css" rel="stylesheet" />
  <link href="${root}/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <link href="${root}/css/nucleo-svg.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link id="pagestyle" href="${root}/css/soft-ui-dashboard.css?v=1.0.2" rel="stylesheet" />
</head>

<body class="g-sidenav-show   bg-gray-100">
     <c:import url="/etc/aside" /> 
  <main class="main-content mt-1 border-radius-lg">
    <c:import url="/etc/nav" />  
    <form action="${root}" method="post">
        <div class="container-fluid py-4">
        <div class="col-12">
      <div class="row">
        <div class="col-2">
        </div>
      	<div class="col-8">
	      <div class="row g-2">
	  <div class="col-md">
	    <div class="form-floating">
	   	      <select class="form-select" name="compare1" id="floatingSelectGrid" aria-label="Floating label select example">
	   	        <c:forEach var="li" items="${list}">
	   	              <option <c:if test="${compare1.id==li.id }">selected</c:if> value="${li.id}" >${li.name}</option>
	   	      </c:forEach>
	      </select>
	      <label for="floatingSelectGrid">Works with selects</label>
	    </div>
	  </div>
	  <div class="col-md">
	    <div class="form-floating">
	      <select class="form-select" name="compare2" id="floatingSelectGrid" aria-label="Floating label select example">
	   	      <c:forEach var="li" items="${list}">
	   	              <option <c:if test="${compare2.id==li.id }">selected</c:if> value="${li.id}">${li.name }</option>
	   	      </c:forEach>
	      </select>
	      <label for="floatingSelectGrid">Works with selects</label>
	    </div>
	  </div>
	   	<button type="submit" class="btn btn-outline-dark">성능비교</button>
	  </div>
	  </div>
	   <div class="col-2">
        </div>
	  </div>
	      </div>
      </div>
      </form>
      <c:if test="${compare1!=null}">
       <div class="col-12">
      		<div class="row">
      		<div class="col-3">
      		</div>
            <div class="card-body px-0 pt-0 pb-2">
              <div class="table-responsive p-0">
                <table border="1" class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th></th>
                      <th>${compare1.name}</th>
                      <th class="">${compare2.name}</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">소켓</h6>
                          </div>
                        </div>
                    </td>
                       <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">   ${compare1.socket}</h6>
                          </div>
                        </div>
                      </td>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
							<h6 class="mb-0 text-sm">   ${compare2.socket}</h6>
                          </div>
                        </div>
                    </td>
                    </tr>
                	<tr>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">제조공정</h6>
                          </div>
                        </div>
                    </td>
                       <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">${compare1.manufacture}</h6>
                          </div>
                        </div>
                      </td>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
							<h6 class="mb-0 text-sm">${compare2.manufacture}</h6>
                          </div>
                        </div>
                    </td>
                    </tr>
                   <tr>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">코어</h6>
                          </div>
                        </div>
                    </td>
                       <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">${compare1.core}</h6>
                          </div>
                        </div>
                      </td>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
							<h6 class="mb-0 text-sm">${compare2.core}</h6>
                          </div>
                        </div>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">쓰레드</h6>
                          </div>
                        </div>
                    </td>
                       <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">${compare1.thread}</h6>
                          </div>
                        </div>
                      </td>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
							<h6 class="mb-0 text-sm">${compare2.thread}</h6>
                          </div>
                        </div>
                    </td>
                    </tr>
               		 <tr>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">BaseClock</h6>
                          </div>
                        </div>
                    </td>
                       <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">${compare1.baseclock}</h6>
                          </div>
                        </div>
                      </td>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
							<h6 class="mb-0 text-sm">${compare2.baseclock}</h6>
                          </div>
                        </div>
                    </td>
                    </tr>
                   <tr>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">BoosterClock</h6>
                          </div>
                        </div>
                    </td>
                       <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">${compare1.boosterclock}</h6>
                          </div>
                        </div>
                      </td>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
							<h6 class="mb-0 text-sm">${compare2.boosterclock}</h6>
                          </div>
                        </div>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">캐시</h6>
                          </div>
                        </div>
                    </td>
                       <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">${compare1.cache}</h6>
                          </div>
                        </div>
                      </td>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
							<h6 class="mb-0 text-sm">${compare2.cache}</h6>
                          </div>
                        </div>
                    </td>
                    </tr>
                  <tr>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">TDP</h6>
                          </div>
                        </div>
                    </td>
                       <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
                            <h6 class="mb-0 text-sm">${compare1.tdp}</h6>
                          </div>
                        </div>
                      </td>
                    <td>
                        <div class="d-flex px-2 py-1">
                          <div class="d-flex flex-column justify-content-center">
							<h6 class="mb-0 text-sm">${compare2.tdp}</h6>
                          </div>
                        </div>
                    </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
      		<div class="col-3">
      		</div>
      		</div>
      	</div>
      </c:if>
      
      <footer class="footer pt-3">
        <div class="container-fluid">
          <div class="row align-items-center justify-content-lg-between">
            <div class="col-lg-6 mb-lg-0 mb-4">
              <div class="copyright text-center text-sm text-muted text-lg-left">
                © <script>
                  document.write(new Date().getFullYear())
                </script>,
                Design By
                <a href="#" class="font-weight-bold" target="_blank">developer GUARD</a>
              </div>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </main>
  <div class="fixed-plugin">
    <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
      <i class="fa fa-cog py-2"> </i>
    </a>
    <div class="card shadow-lg ">
      <div class="card-header pb-0 pt-3 ">
        <div class="float-start">
          <h5 class="mt-3 mb-0">Soft UI Configurator</h5>
          <p>See our dashboard options.</p>
        </div>
        <div class="float-end mt-4">
          <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
            <i class="fa fa-close"></i>
          </button>
        </div>
        <!-- End Toggle Button -->
      </div>
      <hr class="horizontal dark my-1">
      <div class="card-body pt-sm-3 pt-0">
        <!-- Sidebar Backgrounds -->
        <div>
          <h6 class="mb-0">Sidebar Colors</h6>
        </div>
        <a href="javascript:void(0)" class="switch-trigger background-color">
          <div class="badge-colors my-2 text-start">
            <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
            <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
          </div>
        </a>
        <!-- Sidenav Type -->
        <div class="mt-3">
          <h6 class="mb-0">Sidenav Type</h6>
          <p class="text-sm">Choose between 2 different sidenav types.</p>
        </div>
        <div class="d-flex">
          <button class="btn bg-gradient-primary w-100 px-3 mb-2 active" data-class="bg-transparent" onclick="sidebarType(this)">Transparent</button>
          <button class="btn bg-gradient-primary w-100 px-3 mb-2 ms-2" data-class="bg-white" onclick="sidebarType(this)">White</button>
        </div>
        <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
        <!-- Navbar Fixed -->
        <div class="mt-3">
          <h6 class="mb-0">Navbar Fixed</h6>
        </div>
        <div class="form-check form-switch ps-0">
          <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
        </div>
        <hr class="horizontal dark my-sm-4">
        <a class="btn bg-gradient-dark w-100" href="https://www.creative-tim.com/product/soft-ui-dashboard">Free download</a>
        <a class="btn btn-outline-dark w-100" href="https://www.creative-tim.com/learning-lab/bootstrap/license/soft-ui-dashboard">View documentation</a>
        <div class="w-100 text-center">
          <a class="github-button" href="https://github.com/creativetimofficial/soft-ui-dashboard" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star creativetimofficial/soft-ui-dashboard on GitHub">Star</a>
          <h6 class="mt-3">Thank you for sharing!</h6>
          <a href="https://twitter.com/intent/tweet?text=Check%20Soft%20UI%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
          </a>
          <a href="https://www.facebook.com/sharer/sharer.php?u=https://www.creative-tim.com/product/soft-ui-dashboard" class="btn btn-dark mb-0 me-2" target="_blank">
            <i class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
          </a>
        </div>
      </div>
    </div>
  </div>
  <!--   Core JS Files   -->
  	<script src="${root}/js/kakao/kakao.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
    }
  </script>
  <!-- Github buttons -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/soft-ui-dashboard.min.js?v=1.0.2"></script>
</body>

</html>