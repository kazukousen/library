<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>index</title>
    <jsp:include page="/templates/header.jsp">
    <jsp:include page="/templates/datepicker_header.jsp">
  </head>
  <body>
    <div class="container">
      <!-- menu.jsp -->
      <jsp:include page="/templates/menu.jsp">
      <!-- menu.jsp -->

      <div class="container">
        <h2 class="section">ログイン</h2>
        <p>会員の方はログインしてください。</p>
        <form class="form-horizontal">
          <div class="form-group">
            <label class="control-label col-xs-2">E-mail</label>
            <div class="col-xs-5">
                <input type="text" name="email" class="form-control">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-xs-2">Password</label>
            <div class="col-xs-5">
                <input type="password" name="password" class="form-control">
            </div>
          </div>
          <div class="form-group">
            <div class="col-xs-offset-2 col-xs-10">
              <button type="submit" class="btn btn-primary">確認画面に進む</button>
            </div>
          </div>
        </form>
      </div>

      <div class="container">
        <h2 class="section">新規登録</h2>
        <p>はじめてご利用される方は会員登録を行なってください。</p>
        <form class="form-horizontal">
          <div class="form-group">
            <label class="control-label col-xs-2">氏名</label>
            <div class="col-xs-5">
                <input type="text" name="name" class="form-control">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-xs-2">住所</label>
            <div class="col-xs-5">
                <input type="text" name="address" class="form-control">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-xs-2">電話番号</label>
            <div class="col-xs-5">
                <input type="text" name="tel" class="form-control">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-xs-2">生年月日</label>
            <div class="col-xs-5">
                <input type="text" class="form-control datepicker" name="birthday" class="form-control">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-xs-2">E-mail</label>
            <div class="col-xs-5">
                <input type="text" name="email" class="form-control">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-xs-2">Password</label>
            <div class="col-xs-5">
                <input type="password" name="password" class="form-control">
            </div>
          </div>
          <div class="form-group">
            <div class="col-xs-offset-2 col-xs-10">
              <button type="submit" class="btn btn-primary">確認画面に進む</button>
            </div>
          </div>
        </form>
      </div>

      <jsp:include page="/templates/datepicker_footer.jsp">
    </div>
  </body>
</html>
