# docker-overall-project
This is the overall DOCKER project, which mainly focuses on the in-depth understanding and practical application of DOCKER, 
while taking into account the operation environment of the enterprise. So it's theory and practice.



一、简介

     本次项目是关于对docker的深度理解，是属于理论联系实践的，主要是将dockre的数据管理、网络管理、镜像管理、编排、
     dockerfile等从构建到私有库共有库等。实现企业的一些列流程。
     
二、构建案列
     
     本次代码主要是在本地用vscode写的，没有测试。所以要先将这些dockerfile 用build.sh 进行执行测试构建是否成功
     然后再去利用compose编排一键部署，ps：测试代码测试之后，docker安装的容器可通过portainer面板删除。
     


三、部署lnmp
     
     1.网路拓扑图
     
 ![截屏2023-03-19 上午11 10 16](https://user-images.githubusercontent.com/126040842/226165062-b8ac0a6f-6c19-4568-a1b6-8bd0050dce9a.png)

          
     2.代码说明
     
     每个服务下面都有对应的dockerfile和构建脚本，只需先构建好，中间有传送到harbor的代码，然后通过compose进行编排。
     在compose中有自动构建的命令，也可以手动一个个构建，测试代码完整性。
         
         
         
四、效果展示

    
    构建代码执行ok：
    
    
<img width="1082" alt="图片" src="https://user-images.githubusercontent.com/126040842/226171810-38e3d47a-6807-47e2-815a-60674d5addde.png">

    编排执行OK


<img width="1082" alt="图片" src="https://user-images.githubusercontent.com/126040842/226172563-967bee81-2080-4268-ab27-355bfbe8c1ea.png">

    
    容器运行ok
    
![图片](https://user-images.githubusercontent.com/126040842/226175216-51802fcd-6764-4986-9888-2d8e29a3b9f1.png)

    访问页面
 
 ![图片](https://user-images.githubusercontent.com/126040842/226175486-e19f1913-ab62-4d70-9833-54a1098b0a9f.png)




五、复盘与改进



六、复现代码
     
     
