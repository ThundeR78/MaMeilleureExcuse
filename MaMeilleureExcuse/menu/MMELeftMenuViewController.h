//
//  MMELeftMenuViewController.h
//  maMeilleurExcuses
//
//  Created by Julien Zerbit on 28/03/13.
//  Copyright (c) 2013 MME. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MMELeftMenuViewController;

@protocol MMELeftMenuDelegate <NSObject>
@required
-(void) leftMenuControllerRequestClose;
@end


@interface MMELeftMenuViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    id<MMELeftMenuDelegate> delegate;
    BOOL _isDiplay;
    IBOutlet UIView *clearView;
    
}


@property (retain, nonatomic) IBOutlet UITableView *mainTableView;
@property (assign)id<MMELeftMenuDelegate> delegate;
@property (nonatomic, assign)BOOL isDisplay;

@end
