//
//  ViewController.m
//  NSURLSession_Test
//
//  Created by SuperWang on 16/3/4.
//  Copyright © 2016年 SuperWang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //文章分享
    //http://www.cocoachina.com/industry/20131106/7304.html
    //http://www.jianshu.com/p/ba7523372edf
    //http://blog.jobbole.com/52477/
    
    
    //自己手动封装一个请求库系列
    //http://www.cocoachina.com/ios/20150526/11944.html
    //http://www.cocoachina.com/ios/20150526/11945.html
    //http://www.cocoachina.com/ios/20150526/11946.html
    
    /*
     Core Foundation中NSURLConnection在2003年就随着Safari一同发布，诞生在十多年前，由于iOS设备硬件和软件升级比较快，原有的NSURLConenection网络请求的性能需要重构，2013年iOS7中给出了新的网络请求方案-NSURLSession。日常的iOS开发中，AFNetWorking算是最常见的网络请求库，AFNetworking 1.0建立在NSURLConnection的基础之上,AFNetworking 2.0使用NSURLConnection基础API，以及较新基于NSURLSession的API的选项,3.X版本删除了所有基于NSURLConnection API的所有支持，新的API完全基于NSURLSession。
     
     NSURLSessionDataTask主要用于获取JSON/XML数据；
     NSURLSessionDownloadTask的作用是下载文件;
     NSURLSessionUploadTask上传文件会用到;
     */
    
    
    //NSURLSessionDataTask
    //get请求,获得百度apistor中一个天气预报的接口
    //添加了请求头参数
    //设置了请求超时时间
    //1,url
    NSURL *url=[NSURL URLWithString:@"http://apis.baidu.com/heweather/pro/attractions?cityid=CN10101010018A"];
    //2,requst
    NSMutableURLRequest *urlRequest = [[NSMutableURLRequest alloc]initWithURL: url cachePolicy: NSURLRequestUseProtocolCachePolicy timeoutInterval: 10];
    [urlRequest setHTTPMethod: @"GET"];
    [urlRequest addValue: @"f087325ca8cce25cd894541e0ff3d9f4" forHTTPHeaderField: @"apikey"];
    
    //3,URLSession 替换URLConnection
    NSURLSession *urlSession=[NSURLSession sharedSession];
    
    //4,使用block的方式获得数据
    NSURLSessionDataTask *dataTask=[urlSession dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSDictionary *content = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"%@",content);
    }];
    //恢复
    [dataTask resume];
    
    
    
    //上传任务
    //NSURLSessionUploadTask
    //通过下面的方法,将需要上传的数据传入fromData可以实现上传的请求
    //NSURLSessionUploadTask *uploadTask = [urlSession uploadTaskWithRequest:<#(nonnull NSURLRequest *)#> fromData:<#(nonnull NSData *)#>];
    
    
    
    //下载任务
    //NSURLSessionDownloadTask
//    NSURLSessionDownloadTask *downloadTask = [urlSession downloadTaskWithRequest:urlRequest completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//
//    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
