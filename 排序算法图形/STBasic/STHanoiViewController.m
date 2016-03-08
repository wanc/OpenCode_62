//
//  STHanoiViewController.m
//  STBasic
//
//  Created by SunJiangting on 13-11-3.
//  Copyright (c) 2013年 SunJiangting. All rights reserved.
//

#import "STHanoiViewController.h"
#import "STHanoiView.h"
#import "STHanoiOperation.h"

#import "STCodeViewController.h"


@interface STHanoiViewController ()

@property (nonatomic, strong) STHanoiView * hanoiView;

@property (nonatomic, strong) NSOperationQueue * animationQueue;
@end

@implementation STHanoiViewController

- (instancetype) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.animationQueue = [[NSOperationQueue alloc] init];
        self.animationQueue.maxConcurrentOperationCount = 1;
        
        self.numberOfHanois = 4;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.navigationItem.title = @"汉诺塔";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"源码" style:UIBarButtonItemStylePlain target:self action:@selector(viewSourceCode:)];
    
    self.hanoiView = [[STHanoiView alloc] initWithFrame:CGRectMake(0, 100, 320, 300)];
    self.hanoiView.numberOfHanois = self.numberOfHanois;
    [self.view addSubview:self.hanoiView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.hanoiView reloadHanoiView];
    [self moveHanoiWithNumber:self.numberOfHanois - 1 position0:0 position1:1 position2:2];
}

- (void) viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [self.animationQueue cancelAllOperations];
}

- (void) moveHanoiWithNumber:(NSInteger) number
                   position0:(NSInteger) position0
                   position1:(NSInteger) position1
                   position2:(NSInteger) position2 {
    if (number == 0) {
        STHanoiOperation * operation1 = [[STHanoiOperation alloc] init];
        operation1.index = position0;
        operation1.toIndex = position2;
        operation1.hanoiView = self.hanoiView;
        [self.animationQueue addOperation:operation1];
    } else {
        [self moveHanoiWithNumber:number - 1 position0:position0 position1:position2 position2:position1];
        
        STHanoiOperation * operation2 = [[STHanoiOperation alloc] init];
        operation2.index = position0;
        operation2.toIndex = position2;
        operation2.hanoiView = self.hanoiView;
        [self.animationQueue addOperation:operation2];
        
        [self moveHanoiWithNumber:number - 1 position0:position1 position1:position0 position2:position2];
    }
}

- (void) viewSourceCode:(id) sender {
    STCodeViewController * viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"STCodeViewController"];
    viewController.algorithmType = STAlgorithmTypeHanoi;
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
