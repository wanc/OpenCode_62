# 例子集锦

##简介
一些新技术的测试代码和简单的注释

###包含的例子(会持续更新)
- NSURLSession

Core Foundation中NSURLConnection在2003年就随着Safari一同发布，诞生在十多年前，由于iOS设备硬件和软件升级比较快，原有的NSURLConenection网络请求的性能需要重构，2013年iOS7中给出了新的网络请求方案-NSURLSession。日常的iOS开发中，AFNetWorking算是最常见的网络请求库，AFNetworking 1.0建立在NSURLConnection的基础之上,AFNetworking 2.0使用NSURLConnection基础API，以及较新基于NSURLSession的API的选项,3.X版本删除了所有基于NSURLConnection API的所有支持，新的API完全基于NSURLSession

**数据通信用到类和协议可以参考下图**
![icon](http://upload-images.jianshu.io/upload_images/1048365-89477eebc0df677f.png?imageMogr2/auto-orient/strip%7CimageView2/2)

上图中的URL Loading的NSURLSession,NSURLSession需要用到三种异步的任务NSURLSessionDataTask,NSURLSessionDownloadTask和NSURLSessionUploadTask。
NSURLSessionDataTask主要用于获取JSON/XML数据；
NSURLSessionDownloadTask的作用是下载文件;
NSURLSessionUploadTask上传文件会用到;
