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

- 算法排序

```
冒泡排序
它重复地走访过要排序的数列，一次比较两个元素，如果他们的顺序错误就把他们交换过来。走访数列的工作是重复地进行直到没有再需要交换，也就是说该数列已经排序完成。
这个算法的名字由来是因为越大的元素会经由交换慢慢“浮”到数列的顶端，故名。
算法原理
冒泡排序算法的运作如下：（从后往前）
比较相邻的元素。如果第一个比第二个大，就交换他们两个。
对每一对相邻元素作同样的工作，从开始第一对到结尾的最后一对。在这一点，最后的元素应该会是最大的数。
针对所有的元素重复以上的步骤，除了最后一个。
持续每次对越来越少的元素重复上面的步骤，直到没有任何一对数字需要比较。
```

```
选择排序
选择排序（Selection sort）是一种简单直观的排序算法。它的工作原理是每一次从待排序的数据元素中选出最小（或最大）的一个元素，存放在序列的起始位置，直到全部待排序的数据元素排完。
```

```
插入排序
插入排序的基本思想是：每步将一个待排序的纪录，按其关键码值的大小插入前面已经排序的文件中适当位置上，直到全部插入完为止。
每次处理就是将无序数列的第一个元素与有序数列的元素从后往前逐个进行比较，找出插入位置，将该元素插入到有序数列的合适位置中。
```
```
快速排序
快速排序（Quicksort）是对冒泡排序的一种改进。
快速排序由C. A. R. Hoare在1962年提出。它的基本思想是：通过一趟排序将要排序的数据分割成独立的两部分，其中一部分的所有数据都比另外一部分的所有数据都要小，然后再按此方法对这两部分数据分别进行快速排序，整个排序过程可以递归进行，以此达到整个数据变成有序序列。
```

