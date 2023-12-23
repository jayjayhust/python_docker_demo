# python_docker_demo

## 基本指令
- 编译镜像并运行
'''
docker build -t python_docker_demo .
docker run --name python_docker_demo_container -p 8000:80 python_docker_demo
'''
- 推送镜像到dockerhub(需要在dockerhub先新建一个仓库，形如jayhust/python_docker_demo)
参考1：https://blog.csdn.net/hyh17808770899/article/details/125742929
'''
docker login -u jayhust
docker image ls
#docker tag <要push的镜像> <传到dockerhub上的路径>
docker tag python_docker_demo jayhust/python_docker_demo
docker push jayhust/python_docker_demo<:tagname>
'''

## 可能报错
- wsl需要升级(cmd执行)
'''
wsl --update
'''
- hyper-v(cmd执行，两句都要，每句执行完分别都要重启)
https://blog.csdn.net/weixin_47190898/article/details/131060441
'''
dism.exe /Online /Enable-Feature:Microsoft-Hyper-V /All
bcdedit /set hypervisorlaunchtype auto
'''
- 推送镜像到dockerhub的时候报错：denied: requested access to the resource is denied
修改TAG：https://blog.csdn.net/master_hunter/article/details/125661568