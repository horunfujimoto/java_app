# ベースイメージとしてOpenJDKを使用
FROM openjdk:23
# 作業ディレクトリを作成
WORKDIR /app
# アプリケーションのJARファイルをコンテナにコピー
COPY target/demo-0.0.1-SNAPSHOT.jar /app/app.jar
# アプリケーションを起動
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
