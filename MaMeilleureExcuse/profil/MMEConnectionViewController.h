//
//  MMEConnectionViewController.h
//  maMeilleurExcuses
//
//  Created by Julien Zerbit on 26/03/13.
//  Copyright (c) 2013 MME. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMEConnectionViewController : UIViewController


- (IBAction)didTouchCreateAccountButton:(id)sender;
- (IBAction)didTouchForgetPasswordButton:(id)sender;

@property (retain, nonatomic) IBOutlet UIButton *facebookConnect;

@end
