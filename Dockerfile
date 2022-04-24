FROM node:14
WORKDIR /app
COPY index.js /app
# 可以自定义版本号: npm install discuss@0.2.12
RUN npm install discuss
EXPOSE 6870
CMD ["node","index.js"]