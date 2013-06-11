//
//  MMEConnectionViewController.m
//  maMeilleurExcuses
//
//  Created by Julien Zerbit on 26/03/13.
//  Copyright (c) 2013 MME. All rights reserved.
//

#import "MMEConnectionViewController.h"
#import "MMEForgetPasswordViewController.h"
#import "MMECreateAccountViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface MMEConnectionViewController ()

@end

@implementation MMEConnectionViewController

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
    
    UIBarButtonItem * lcLeftItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"tmpMenu.png"] style:UIBarButtonItemStylePlain target:self action:@selector(closeLogin)];
	self.navigationItem.leftBarButtonItem = lcLeftItem;
    
    self.facebookConnect.layer.cornerRadius = 5.;
	[lcLeftItem release];
}

-(void)closeLogin
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTouchCreateAccountButton:(id)sender
{
    MMECreateAccountViewController *lc_controller = [[MMECreateAccountViewController alloc]initWithNibName:@"MMECreateAccountViewController" bundle:nil];
    lc_controller.nom = @"toto";
    [self.navigationController pushViewController:lc_controller animated:YES];
    [lc_controller release];
}

- (IBAction)didTouchForgetPasswordButton:(id)sender
{
    MMEForgetPasswordViewController* lc_controller = [[MMEForgetPasswordViewController alloc]initWithNibName:@"MMEForgetPasswordViewController" bundle:nil];
    [self.navigationController pushViewController:lc_controller animated:YES];
    [lc_controller release];
    
}
- (void)dealloc {
    [_facebookConnect release];
    [super dealloc];
}
@end
