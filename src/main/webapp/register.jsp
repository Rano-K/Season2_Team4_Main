<%@page import="com.javalec.bbs.function.AllergyList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="register">
    <meta name="author" content="okrie">

    <title>Register</title>

    <!-- Custom fonts for this template-->
    <link href="admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="admin/css/sb-admin-2.min.css" rel="stylesheet">
    <script src="js/login.js"></script>

</head>

<body class="bg-gradient-primary">
	<%@ include file="header_login.jsp"%>
    <div class="container">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                            </div>
                            <form class="user">
                                <div class="form-group row">
                                	<div class="col-sm-9 mb-3 mb-sm-0">
                                   		<input type="text" class="form-control form-control-user" id="userid" placeholder="ID">
                                   	</div>
                                   	<div class="col-sm-3">
	                                   	<!-- 사용 가능 확인 터치하여 나왔을 떄 비활성화 처리 해야 함 -->
	                                   	<input type="hidden" id="idCheck" value="0">
	                                   	<script type="text/javascript">
	                                   		var idCheckValue = document.getElementById("idCheck").value;
	                                   		console.log(idCheckValue)
	                                   	</script>
	                                   	<c:choose>
		                                   	<c:when test="${idCheckValue eq '0'}">
		                                   		<a href="#" class="btn btn-primary btn-user btn-block" data-toggle="modal" data-target="#idduplicateModal">ID 중복체크</a>
		                                   	</c:when>
		                                   	<c:otherwise>
		                                   		<a href="#" class="btn btn-secondary btn-user btn-block" onclick="return false;"> ID 중복체크</a>
		                                   	</c:otherwise>
	                                   	</c:choose>
									</div>
                               	</div>
                               	<div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user" id="password1"
                                            placeholder="Password" onkeyup="checkPassword()">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user" id="password2"
                                            placeholder="Repeat Password" onkeyup="checkPassword()">
                                    </div>
                                </div>
                                <div class="form-group sm">
                                	<input id="passwordStatus" class="form-control form-control-user" disabled="disabled" placeholder="비밀번호 일치 여부">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="telno" placeholder="Phone Number (ex 010-0000-0000)">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="email" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="address" placeholder="Address" value="api 현재 미적용">
                                </div>
                                <div class="form-group">
	                                <div class="input-group-text col-sm-12">
	                                    <input type="radio" style="margin-left: 20%" id="male" name="gender" value="male" checked="checked"> 남자
	                                    <input type="radio" style="margin-left: 30%" id="female" name="gender" value="female"> 여자
	                                </div>
                                </div>
                                <!-- 알러지 모달 -->
                                <input type="hidden" id="allergyCheck" value="0">
                                <div class="form-group">
                                	<a href="#" class="btn btn-primary btn-user btn-block" data-toggle="modal" data-target="#allergyModal" style="margin-left: auto; margin-right: auto;"> 알러지 체크 하기 </a>
                                </div>
                                <hr>
                                <!-- 회원가입 눌렀을 때  -->
                                <c:choose>
	                                <c:when test="${(idcheck eq '1') && (allergyCheck eq '1')}">
	                                	<a href="register.do" class="btn btn-primary btn-user btn-block"> Register Account </a>
	                                </c:when>
	                                <c:otherwise>
	                                	<a href="#" class="btn btn-secondary btn-user btn-block"> Register Account </a>
                                	</c:otherwise>
                                </c:choose>
                                <hr>
                                <a href="#" class="btn btn-kakao btn-user btn-block">
                                	<i class="fas fa-comment-dots fa-flip-horizontal"></i> Register with Kakao 미적용
                                </a>
                                <a href="#" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Register with Google 미적용
                                </a>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="forgot-password.html">Forgot Password?</a>
                            </div>
                            <div class="text-center">
                                <a class="small" href="login.do">Already have an account? Login!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- ID Duplicate Modal -->
    <div class="modal fade" id="idduplicateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">아이디 중복 확인</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<input type="text" placeholder="사용할 ID를 입력 해주세요.">
					<button type="button" onclick="checkid()" name="dbCheckId">중복체크</button>
				</div>
				<div class="modal-footer">
					<!-- 여기서 위에 찾은 값이 사용 가능 할 때 확인 버튼 활성화 및 변수 저장하여 위에서 account 버튼 활성화때 이용 -->
					<button class="btn btn-primary" type="button" onclick="setStatusVar('idCheck')">확인</button>
				</div>
			</div>
		</div>
	</div>
    <!-- allergy Modal -->
    <div class="modal fade" id="allergyModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">알러지 선택하기</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<c:set var="enumValues" value="<%=AllergyList.values()%>"/>
                    	<c:forEach items="${enumValues}" var="enumValue">
							<input type="checkbox" id="allergy" value="${enumValue}">
							${enumValue.label()} <br/>
					</c:forEach>
				</div>
				<div class="modal-footer">
					<button class="btn btn-primary" type="button"
						onclick="setStatusVar('allergyCheck')">확인</button>
				</div>
			</div>
		</div>
	</div>

    <!-- Bootstrap core JavaScript-->
    <script src="admin/vendor/jquery/jquery.min.js"></script>
    <script src="admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="admin/js/sb-admin-2.min.js"></script>

</body>

</html>