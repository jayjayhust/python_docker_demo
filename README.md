# python_docker_demo

## 基本指令
'''
docker build -t python_docker_demo .
docker run --name python_docker_demo_container -p 8000:80 python_docker_demo
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