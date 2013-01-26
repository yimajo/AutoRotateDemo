//
//  SecondViewController.m
//  AutoRotateDemo
//
//  Created by yimajo on 2013/01/21.
//  Copyright (c) 2013年 yimajo. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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


@end
