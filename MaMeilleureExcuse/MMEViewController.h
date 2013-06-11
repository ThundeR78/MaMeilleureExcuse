//
//  MMEViewController.h
//  maMeilleurExcuses
//
//  Created by Julien Zerbit on 24/03/13.
//  Copyright (c) 2013 MME. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMEDefaultCell.h"
#import "MMEDefaultViewController.h"

@interface MMEViewController : MMEDefaultViewController

@property (assign, nonatomic) IBOutlet MMEDefaultCell *defaultCell;
@property (retain, nonatomic) IBOutlet UITableView *defaultTableView;


@end
