//
//  MMEDefaultViewController.m
//  maMeilleurExcuses
//
//  Created by Julien Zerbit on 28/03/13.
//  Copyright (c) 2013 MME. All rights reserved.
//

#import "MMEDefaultViewController.h"


@interface MMEDefaultViewController ()

@end

@implementation MMEDefaultViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.4 green:0.8 blue:0 alpha:1];
    
    UIBarButtonItem * lcLeftItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"tmpMenu.png"] style:UIBarButtonItemStylePlain target:self action:@selector(needToDisplayLeftMenu:)];
	self.navigationItem.leftBarButtonItem = lcLeftItem;
	[lcLeftItem release];
    
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(needToDisplayLeftMenu:)];
    swipe.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipe];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)needToDisplayLeftMenu:(UISwipeGestureRecognizer *)recognizer
{
    MMELeftMenuViewController *lc_menuController = [MMELeftMenuManager sharedMenu];
    lc_menuController.delegate = self;
    
    [self.view addSubview:lc_menuController.view];
    [lc_menuController.view setTransform:CGAffineTransformMakeTranslation(-200, 0)];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    //[self.view setTransform:CGAffineTransformMakeTranslation(200, 0)];
    [lc_menuController.view setTransform:CGAffineTransformMakeTranslation(0, 0)];
    [UIView commitAnimations];

    lc_menuController.isDisplay = YES;
    [self.navigationItem.leftBarButtonItem setAction:@selector(leftMenuControllerRequestClose)];
}


-(void)leftMenuControllerRequestClose
{
     MMELeftMenuViewController *lc_menuController = [MMELeftMenuManager sharedMenu];
    if(lc_menuController.isDisplay)
    {
        [UIView animateWithDuration:0.5
                         animations:^{
                             [lc_menuController.view setTransform:CGAffineTransformMakeTranslation(-200, 0)];
                         }
                         completion:^(BOOL finished){
                             [lc_menuController.view removeFromSuperview];
                         }];
        lc_menuController.isDisplay = NO;
        [self.navigationItem.leftBarButtonItem setAction:@selector(needToDisplayLeftMenu:)];
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return NO;
}

@end
