//
//  NavigationController.m
//  AutoRotateDemo
//
//  Created by yimajo on 2013/01/21.
//  Copyright (c) 2013年 yimajo. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - rotate
#pragma mark iOS5

//iOS5の自動回転はnavigationControllerで回転メソッドを記述しない


#pragma mark iOS6

- (BOOL)shouldAutorotate
{
	//表示しているViewControllerにまかせる
	return [self.visibleViewController shouldAutorotate];
}

- (NSUInteger)supportedInterfaceOrientations
{
	//表示しているViewControllerにまかせる
	return [self.visibleViewController supportedInterfaceOrientations];
}

//初期向き
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
	//表示しているViewControllerにまかせる
	return [self.visibleViewController preferredInterfaceOrientationForPresentation];
}

@end
