FROM node:10-alpine  # 构建镜像的基础源镜像

# Create app directory
RUN mkdir -p /home/Service             # 用于在Image里创建一个文件夹并用来保存我们的代码
WORKDIR /home/Service                  # 将我们创建的文件夹做为工作目录

# Bundle app source
COPY . /home/Service                   # 把本机当前目录下的所有文件拷贝到Image的/home/Service文件夹下
RUN npm install --registry=http://10.63.5.12:8081/repository/npmgroup/                        # 使用npm 安装我们的app据需要的所有依赖

EXPOSE 8888
CMD [ "npm", "start" ]