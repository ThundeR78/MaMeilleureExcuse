//
//  MMEViewController.m
//  maMeilleurExcuses
//
//  Created by Julien Zerbit on 24/03/13.
//  Copyright (c) 2013 MME. All rights reserved.
//

#import "MMEViewController.h"
#import "MMEConnectionViewController.h"

@interface MMEViewController ()

@end

@implementation MMEViewController
@synthesize defaultCell = _defaultCell;
@synthesize defaultTableView = _defaultTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row % 2 == 0)
    {
        MMEDefaultCell *cell = (MMEDefaultCell *)[tableView dequeueReusableCellWithIdentifier:[MMEDefaultCell reuseIdentifier]];
    
        if (cell == nil)
        {
            [[NSBundle mainBundle] loadNibNamed:@"MMEDefaultTableViewCell" owner:self options:nil];
            cell = _defaultCell;
            _defaultCell = nil;
        }
    
        cell.mainLabel.text = @"I am the main label !!!! hahahaha !!! blablablabalablablabal";
        cell.agreeLabel.text = @"je valide !!";
        cell.disagreeLabel.text = @"vtff gros con";
        return cell;
    }
    else
    {
        UITableViewCell* cell= [tableView dequeueReusableCellWithIdentifier:@"sep"];
        if (cell == nil)
        {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"sep"];
        }
        cell.contentView.backgroundColor = [UIColor clearColor];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
        
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0)
    {
        MMEConnectionViewController* lc_controller = [[MMEConnectionViewController alloc]initWithNibName:@"MMEConnectionViewController" bundle:nil];
        UINavigationController *navLogin = [[UINavigationController alloc]initWithRootViewController:lc_controller];
        [lc_controller release];
        [self presentViewController:navLogin animated:YES completion:nil];
        [navLogin release];
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row%2==0)
        return 170;
    else
        return 20;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [_defaultTableView release];
    [super dealloc];
}
@end
