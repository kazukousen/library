## 会員テーブル

- テーブル名はmember

### 列の説明

- member_id (int)
  - 主キー、会員ID
- member_name (String)
  - 会員の名前
- member_address (String)
  - 住所
- member_tel (String)
  - 電話番号
  - ハイフンありで保存
- member_email (String)
  - Eメールアドレス
- member_password
  - 一次開発とりあえず無視
  - ユーザのパスワード
- user_role
  - 一次開発とりあえず無視
  - 0: 利用者, 1: 受付係 2: 司書


user_id | user_name | user_address | user_tel | user_email | user_password | user_birthday | user_role
---- | ---- | ---- | ---- | ---- | ---- | ---- | ----
1 | 新田 | 東京都〜 | 090-9999-9999 | staff@google.co.jp | とりあえず無視 | 1995/02/28 | 1

## 資料共通情報テーブル

- 資料のユニークな情報。
- テーブル名はbookInfo

### 列の説明

- bookinfo_id (int)
  - 主キー
- bookinfo_isbn (int)
  - ISBN番号
- bookinfo_title (String)
  - 書籍名
- category_code (int)
  - 区分コード
- publisher_code (int)
  - 出版社テーブルの外部キー
- published_at (Date)
  - 出版日

bookinfo_id | bookinfo_isbn | bookinfo_title | category_code | publisher_code | published_at
---- | ---- | ---- | ---- | ---- | ----
15 | 4906638015 | 7つの習慣 | 3 | 18 | 1996/12/25

## 資料固有情報テーブル

- 各資料の情報
- テーブル名はbookState

### 列の説明
- bookstate_id (int)
  - 主キー, 資料ID
- bookinfo_id (int)
  - 資料共通情報の外部キー
- bookstate_arrived_at (Date)
  - 一次開発では無視
  - 入荷日
- bookstate_scraped_at (Date)
  - 一次開発では無視
  - 廃棄日

bookstate_id | bookinfo_id | bookstate_arrived_at | bookstate_scraped_at
---- | ---- | ---- | ----
123 | 15 | 無視 | 無視
124 | 15 | 無視 | 無視

## 出版社テーブル

- 出版社の管理
- テーブル名はpublisher

### 列の説明
- publisher_code
  - 主キー
- publisher_name
  - 出版社名

publisher_code | publisher_name
---- | ----
18 | キングベアー出版

## 著者テーブル

- 著者の管理
- 著者と資料は多対多

## 著者・資料共通情報の中間テーブル

- 著者テーブルと資料共通情報のテーブルが多対多でつながりがあるため
- テーブル名はauthor_and_bookInfo

### 列の説明
- author_and_bookstate_id
  - 主キー
- author_id
  - 外部キー(著者テーブルの主キー)
- bookinfo_id
  - 外部キー(資料共通情報テーブルの主キー)

author_and_bookstate_id | author_id | bookinfo_id
---- | ---- | ----
1 | 5 | 15
