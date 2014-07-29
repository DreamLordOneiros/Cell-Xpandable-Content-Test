//
//  StandarCustomCell.m
//  Cell Xpandable Content Test
//
//  Created by Chanti... on 7/24/14.
//  Copyright (c) 2014 Chanti... All rights reserved.
//

#import "StandarCustomCell.h"

@implementation StandarCustomCell
@synthesize myLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
