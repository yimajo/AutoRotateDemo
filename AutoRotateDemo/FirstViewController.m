//
//  FirstViewController.m
//  AutoRotateDemo
//
//  Created by yimajo on 2013/01/21.
//  Copyright (c) 2013年 yimajo. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - rotate
#pragma mark iOS5

//iOS5では自動回転させたくないナビゲーションやタブを選べない
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	if (UIInterfaceOrientationPortraitUpsideDown != interfaceOrientation) {
		//逆さだけ回転させない
		return YES;
	}
	return NO;
}


#pragma mark iOS6

- (BOOL)shouldAutorotate
{
	//このViewControllerは回転させない
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
	//縦だけサポートする
    return UIInterfaceOrientationMaskPortrait;
}

//初期向き
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
	return UIInterfaceOrientationPortrait;
}

@end
