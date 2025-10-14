# 使用輕量版 Node.js 作為基底映像
FROM node:20-alpine

# 設定工作目錄
WORKDIR /app

# 將當前目錄內容複製進容器
COPY . .

# 全域安裝 http-server
RUN npm install -g http-server

# 預設使用 8080 port，可改成你要的
EXPOSE 8080

# 啟動 http-server，服務 /app 資料夾內容
CMD ["http-server", ".", "-p", "8080", "-c-1"]
