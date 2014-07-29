//
//  ContentCollectionCell.h
//  Netflix Menu Sample
//
//  Created by Chanti... on 7/28/14.
//  Copyright (c) 2014 DreamLordOneiros... All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MarqueeLabel.h"

@interface ContentCollectionCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *placeImage;
@property (weak, nonatomic) IBOutlet UILabel *placePhone;
@property (weak, nonatomic) IBOutlet UILabel *placeWebInfo;
@property (weak, nonatomic) IBOutlet MarqueeLabel *placeAddress;

@property (weak, nonatomic) IBOutlet UIButton *placeSite;
@property (weak, nonatomic) IBOutlet UIButton *placeLocation;
@end
