//
//  STAppDelegate.m
//  STBasic
//
//  Created by SunJiangting on 13-11-1.
//  Copyright (c) 2013年 SunJiangting. All rights reserved.
//

#import "STAppDelegate.h"

@implementation STAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    /*
     i=0  j:0-10
     i=1  j:0-9
     i=2  j:0-8
     ...
     i=10 j:0
     */
    
    //冒泡排序
    int a [12] = {20,6,2,8,9,12,2,4,3,4,7,11};
    BOOL exchanged = YES;
    //i:整体遍历的次数
    //j:当前遍历的位置
    for (int i = 0 ; i<11&&exchanged; i++) {
        exchanged = NO;
        for (int j = 0 ; j<(11-i); j++)
        {
            NSLog(@"---%d---%d",i,j);
            int b = a[j];
            int c = a[j+1];
            if (b>c) {
                a[j] = c;
                a[j+1] = b;
                exchanged = YES;
            
            }
        }
        
    }
    for (int i = 0 ; i< 12;i++ ) {
        NSLog(@"for is end :%d",a[i]);
    }
    
    
    //选择排序
    int b[8] = {10,2,5,34,6,7,8,1};
    
    for (int i = 0; i<8; i++)
    {
        for (int n = i ; n<8; n++)
        {
            int bi = b[i];
            int bn = b[n];
            if (bi>bn)
            {
                b[i] = bn;
                b[n] = bi;
                
            }
        }
    }
    
    for (int i = 0 ; i< 8;i++ ) {
        NSLog(@"for is end :%d",b[i]);
    }
    
    
    //插入排序
    int c[8] = {10,2,5,34,6,7,8,1};
    for (int i = 1; i<8; i++)
    {
        int  ci = c[i];
        
        int cj;
        
        int j = i;
        while (j>0&&(cj = c[j-1])>ci)
        {
            c[j] = cj;
            j--;
        }
        c[j] = ci;
        
    }
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
