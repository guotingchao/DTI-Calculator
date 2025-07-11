# 使用轻量级的 Nginx Alpine 镜像
FROM nginx:alpine

# 复制静态文件到 Nginx 默认目录
COPY index.html /usr/share/nginx/html/

# 复制自定义的 nginx 配置文件
COPY nginx.conf /etc/nginx/conf.d/default.conf

# 暴露端口
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]