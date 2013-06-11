//
//  MMEDefaultCell.m
//  maMeilleurExcuses
//
//  Created by Julien Zerbit on 24/03/13.
//  Copyright (c) 2013 MME. All rights reserved.
//

#import "MMEDefaultCell.h"

@implementation MMEDefaultCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

+ (NSString *)reuseIdentifier
{
    return @"MMEDefaultCellIdentifier";
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_mainLabel release];
    [_agreeLabel release];
    [_disagreeLabel release];
    [super dealloc];
}
@end
