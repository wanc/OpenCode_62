//
//  STSortViewController.h
//  STBasic
//
//  Created by SunJiangting on 13-11-1.
//  Copyright (c) 2013年 SunJiangting. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum STArraySortType {
    STArraySortTypeBubbleSort = 1,
    STArraySortTypeSelectSort = 2,
    STArraySortTypeInsertSort = 3,
    STArraySortTypeQuickSort  = 5,
} STArraySortType;

@interface STSortViewController : UIViewController

@property (nonatomic, assign) STArraySortType arraySortType;
@property (nonatomic, strong) NSArray       * sortArray;

@end
