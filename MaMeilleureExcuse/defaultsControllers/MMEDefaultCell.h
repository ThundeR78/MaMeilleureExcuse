//
//  MMEDefaultCell.h
//  maMeilleurExcuses
//
//  Created by Julien Zerbit on 24/03/13.
//  Copyright (c) 2013 MME. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMEDefaultCell : UITableViewCell

+(NSString*)reuseIdentifier;
@property (retain, nonatomic) IBOutlet UILabel *mainLabel;
@property (retain, nonatomic) IBOutlet UILabel *agreeLabel;
@property (retain, nonatomic) IBOutlet UILabel *disagreeLabel;


@end
