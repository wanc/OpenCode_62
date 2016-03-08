//
//  STHanoiOperation.h
//  STBasic
//
//  Created by SunJiangting on 13-11-3.
//  Copyright (c) 2013年 SunJiangting. All rights reserved.
//

#import <Foundation/Foundation.h>
@class STHanoiView;
@interface STHanoiOperation : NSOperation

@property (nonatomic, assign) NSInteger     index;
@property (nonatomic, assign) NSInteger     toIndex;
@property (nonatomic, weak)   STHanoiView * hanoiView;
@end
