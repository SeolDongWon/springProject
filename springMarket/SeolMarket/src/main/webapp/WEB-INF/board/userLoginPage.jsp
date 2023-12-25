<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="pageInclude/PageTop.jsp"%>
<main class="p-0 m-0">
	<section>
		<article>
			<div class="p-5 m-auto" style="width: 500px;">
          <form action="userLogin.do" method="post" >
            <h1 class="h3 mb-3 fw-normal text-center">로그인</h1>
            <div class="form-floating">
              <input type="text" name="id" class="form-control" id="floatingInput" placeholder="name@example.com" value="admin">
              <label for="floatingInput">id</label>
            </div>
            <div class="form-floating">
              <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password" value="admin">
              <label for="floatingPassword">Password</label>
            </div>
        
            <!-- <div class="form-check text-start my-3">
              <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
              <label class="form-check-label" for="flexCheckDefault">
                아이디기억하기
              </label>
            </div> -->
            <button class="btn btn-primary w-100 py-2 mt-2" type="submit">로그인</button>
            <br>
          </form>
            <a href="userInsertPage.do"><button class="btn btn-primary w-100 py-2 mt-2">회원가입</button></a> 
        </div>
		</article>
	</section>
</main>
<%@ include file="pageInclude/PageBottom.jsp"%>
<style>
/*css 작성  */


</style>

<script type="text/javascript">
/*js 작성  */



</script>

