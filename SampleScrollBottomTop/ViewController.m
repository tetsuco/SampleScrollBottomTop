//
//  ViewController.m
//  SampleScrollBottomTop
//
//  Created by  on 11/12/03.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //--------------------------------------------------
    // スクロールを生成
    //--------------------------------------------------
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.backgroundColor = [UIColor whiteColor];
    scrollView.frame = CGRectMake(0, 0, 320, 460);
    scrollView.contentSize = CGSizeMake(320, 800);
    scrollView.pagingEnabled = NO;
    scrollView.delegate = self;
    [self.view addSubview:scrollView];
    
    
    //--------------------------------------------------
    // スクロールを下から上へスクロールさせる
    //--------------------------------------------------
    // 一番下までスクロール
    [scrollView setContentOffset:CGPointMake(0.0f, scrollView.frame.origin.y + scrollView.frame.size.height) animated:NO];
    
    // 一番上までスクロール
    [scrollView setContentOffset:CGPointMake(0.0f, 0.0f) animated:YES];
    
    
    //--------------------------------------------------
    // ラベルを設置
    //--------------------------------------------------
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(60, 215, 300, 30);
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor blackColor];
    label.text = @"下から上へスクロールする";
    [scrollView addSubview:label];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
