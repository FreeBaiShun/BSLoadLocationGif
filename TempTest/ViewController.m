//
//  ViewController.m
//  TempTest
//
//  Created by yuYue on 2018/7/7.
//  Copyright © 2018年 yuYue. All rights reserved.
//

#import "ViewController.h"
#import "BSLoadLocationGif.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString  *filePath = [[NSBundle bundleWithPath:[[NSBundle mainBundle] bundlePath]]pathForResource:@"loading" ofType:@"gif"];
    
    [BSLoadLocationGif bs_setImage:[NSURL fileURLWithPath:filePath] withView:self.view];
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [NSThread sleepForTimeInterval:5.0];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            for (int i = 0 ; i < 1000; i++) {
                [NSThread sleepForTimeInterval:1.0];
                UIView *view = [UIView new];
            }
            
        });
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end











