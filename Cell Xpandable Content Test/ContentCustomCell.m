//
//  ContentCustomCell.m
//  Cell Xpandable Content Test
//
//  Created by Chanti... on 7/24/14.
//  Copyright (c) 2014 Chanti... All rights reserved.
//

#import "ContentCustomCell.h"

@implementation ContentCustomCell
@synthesize myLabel, labelAddress, labelPhone, myImage, labelWebData;

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

- (IBAction)visitSite:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Visit Webpage" message:labelWebData.text delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Yes", nil];
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1)
    { // Set buttonIndex == 0 to handel "Ok"/"Yes" button response
        // Cancel button response
    }
}
@end
