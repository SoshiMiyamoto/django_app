FROM python:3.9

# 作業ディレクトリの作成
RUN mkdir /src

# 作業ディレクトリの設定
WORKDIR /src

# カレントディレクトリにある資産をコンテナ上の指定のディレクトリにコピーする
ADD . /src

# pipでrequirements.txtに指定されているパッケージを追加する
RUN pip3 install -r requirements-docker.txt

# dbのmigration
RUN python3 manage.py migrate

# 起動（コンテナのポート8080番で受け付けるように起動する）
CMD python3 manage.py runserver 0.0.0.0:80
