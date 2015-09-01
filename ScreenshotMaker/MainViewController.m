//
//  MainViewController.m
//  ScreenshotMaker
//
//  Created by WuZhengBin on 15/9/1.
//  Copyright (c) 2015年 WuZhengBin. All rights reserved.
//

#import "MainViewController.h"
#import "DeviceDefiner.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = [DeviceDefiner fetchMyDevice];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
