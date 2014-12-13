//
//  ViewController.m
//  buttonTest
//
//  Created by wangsl-iMac on 14-10-20.
//  Copyright (c) 2014年 wangsl-iMac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //_myButton.layer.cornerRadius = _myButton.self.frame.size.height / 2.0;
    [_myButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton * mybutton = [UIButton buttonWithType:UIButtonTypeCustom];
    mybutton.frame = CGRectMake(50, 50, 100, 40);
    mybutton.backgroundColor = [UIColor whiteColor];
    [mybutton setTitleShadowColor:[UIColor blackColor] forState:UIControlStateNormal];
    //mybutton.selected = YES;
    //[mybutton setTitleColor:[UIColor yellowColor] forState:UIControlStateSelected];
    
    [mybutton setImage:[UIImage imageNamed:@"aui_close.hover"] forState:UIControlStateNormal];
    //UIImage * iamge = [UIImage imageNamed:@"aui_close.hover"];
    
    //[mybutton setBackgroundImage:iamge forState:UIControlStateNormal];
    [mybutton setTitle:@"Normal" forState:UIControlStateNormal];
    [mybutton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [mybutton setTitle:@"Click" forState:UIControlStateHighlighted];
    [mybutton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    //mybutton.contentEdgeInsets = UIEdgeInsetsMake(0,0,0,0);
    
    [mybutton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    
//    UIEdgeInsets iamgeedge = {10,10,0,0};
//    mybutton.imageEdgeInsets = iamgeedge;
    
//    UIEdgeInsets edge = {0,0,0,0};
//    mybutton.contentEdgeInsets = edge;
//    
    
//    UIEdgeInsets edgeTitle = {10,10,0,0};
//    mybutton.titleEdgeInsets = edgeTitle;
    
//    mybutton.reversesTitleShadowWhenHighlighted = NO;
    
    [self.view addSubview:mybutton];
    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)buttonClick:(UIButton *)sender
{
    NSLog(@"butto click!");

    //sender.selected = !sender.selected;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
