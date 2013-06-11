//
//  MMECreateAccountViewController.m
//  maMeilleurExcuses
//
//  Created by Julien Zerbit on 26/03/13.
//  Copyright (c) 2013 MME. All rights reserved.
//

#import "MMECreateAccountViewController.h"

@interface MMECreateAccountViewController ()

@end

@implementation MMECreateAccountViewController
@synthesize nom;

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
    [self.mainLabel setText:self.nom];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_mainLabel release];
    [super dealloc];
}
@end
