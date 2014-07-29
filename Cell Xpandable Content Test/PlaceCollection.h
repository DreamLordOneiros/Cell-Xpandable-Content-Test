//
//  PlaceCollection.h
//  Netflix Menu Sample
//
//  Created by Chanti... on 7/28/14.
//  Copyright (c) 2014 DreamLordOneiros... All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageCollectionCell.h"
#import "ContentCollectionCell.h"
#import <QuartzCore/QuartzCore.h>

@interface PlaceCollection : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource>

@property (strong, nonatomic) NSDictionary *placeArray;

@property (weak, nonatomic) IBOutlet UICollectionView *placesCollectionView;

-(void) updateContentWithDictionary: (NSDictionary *) dic;

@end
