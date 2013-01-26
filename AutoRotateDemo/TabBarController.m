//
//  TabBarController.m
//  AutoRotateDemo
//
//  Created by yimajo on 2013/01/21.
//  Copyright (c) 2013年 yimajo. All rights reserved.
//

#import "TabBarController.h"

@interface TabBarController ()

@end

@implementation TabBarController

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

//iOS5の自動回転はtabで回転メソッドを記述しない

#pragma mark iOS6

//回転させるかどうか
- (BOOL)shouldAutorotate
{
	//選択したViewController(navigationならnavigation)に任せる
	return [self.selectedViewController shouldAutorotate];
}

//回転させる向きを指定
- (NSUInteger)supportedInterfaceOrientations
{
	//選択したViewController(navigationならnavigation)に任せる
	return [self.selectedViewController supportedInterfaceOrientations];
}

//初期向き
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
	//選択したViewController(navigationならnavigation)に任せる
	return [self.selectedViewController preferredInterfaceOrientationForPresentation];
}

@end
