//
//  ContentCustomCell.h
//  Cell Xpandable Content Test
//
//  Created by Chanti... on 7/24/14.
//  Copyright (c) 2014 Chanti... All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentCustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@property (weak, nonatomic) IBOutlet UIImageView *myImage;
@property (weak, nonatomic) IBOutlet UILabel *labelAddress;
@property (weak, nonatomic) IBOutlet UILabel *labelPhone;
@property (weak, nonatomic) IBOutlet UILabel *labelWebData;

- (IBAction)visitSite:(id)sender;
@end
