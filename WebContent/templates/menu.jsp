<!-- menu.jsp -->
<div class="container-fluid">
<p><h1>新宿図書館 図書管理システム</h1></p>
<p class="right"><a href="top.jsp">トップメニューに戻る</a></p>

<c:if test="${logined == true}" var="flg"/>

<c:if test="${flg}">
  <p class="right">ようこそ、${name}さん。</p>
</c:if>

<c:if test="${!flg}">
  <p class="right"><a href="login.jsp">新規登録/ログイン</a></p>
</c:if>

</div>
<!-- menu.jsp -->
