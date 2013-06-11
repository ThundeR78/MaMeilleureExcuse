//
//  MMELeftMenuViewController.m
//  maMeilleurExcuses
//
//  Created by Julien Zerbit on 28/03/13.
//  Copyright (c) 2013 MME. All rights reserved.
//

#import "MMELeftMenuViewController.h"

@interface MMELeftMenuViewController ()

@end

@implementation MMELeftMenuViewController
@synthesize delegate;
@synthesize isDisplay = _isDiplay;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        _isDiplay = NO;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _isDiplay = YES;
    self.mainTableView.delegate = self;
    self.mainTableView.dataSource = self;
    [self.mainTableView reloadData];
    UITapGestureRecognizer* close = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(closeMenu:)];
    [clearView addGestureRecognizer:close];
}

-(void)closeMenu:(UITapGestureRecognizer*)reconizer
{
    if([self.delegate respondsToSelector:@selector(leftMenuControllerRequestClose)])
    {
        [self.delegate leftMenuControllerRequestClose];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [_mainTableView release];
    [clearView release];
    [super dealloc];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *lc_cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!lc_cell)
    {
        lc_cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    lc_cell.textLabel.text = @"toto";
    
    
    return lc_cell;
}

@end
