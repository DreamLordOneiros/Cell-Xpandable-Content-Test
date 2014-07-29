//
//  PlaceCollection.m
//  Netflix Menu Sample
//
//  Created by Chanti... on 7/28/14.
//  Copyright (c) 2014 DreamLordOneiros... All rights reserved.
//

#import "PlaceCollection.h"

@interface PlaceCollection ()

@end

@implementation PlaceCollection
@synthesize placesCollectionView, placeArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) updateContentWithDictionary: (NSDictionary *) dictionary
{
    //NSLog(@"array desc: %@", [array description]);
    placeArray = [dictionary mutableCopy];
    [self.placesCollectionView reloadData];
}

- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        ContentCollectionCell *cell = (ContentCollectionCell *)[cv dequeueReusableCellWithReuseIdentifier:@"contentCollectionCell" forIndexPath:indexPath];
        cell.backgroundColor = [UIColor whiteColor];
        
        cell.placePhone.text = [placeArray objectForKey:@"phone"];
        cell.placeAddress.text = [placeArray objectForKey:@"address"];
        cell.placeWebInfo.text = [placeArray objectForKey:@"webdata"];
        cell.placeImage.image =[UIImage imageNamed:@"Barocco.jpg"];
        /* ------------------------------ */
        // Continuous Type
        cell.placeAddress.marqueeType = MLContinuous;
        cell.placeAddress.scrollDuration = 10.0;
        cell.placeAddress.animationCurve = UIViewAnimationOptionCurveEaseInOut;
        cell.placeAddress.fadeLength = 10.0f;
        cell.placeAddress.continuousMarqueeExtraBuffer = 10.0f;
        /* ------------------------------ */
        
        [cell.placeImage.layer setOpacity:0.8f];
        [cell.placeImage.layer setCornerRadius:20.0f];
        cell.placeImage.layer.masksToBounds = YES;
        
        cell.layer.borderWidth = 3;
        cell.layer.borderColor = [[[UIColor alloc] initWithRed:24.0/255.0 green:68.0/255.0 blue:112.0/255.0 alpha:1] CGColor];
        return cell;
    }
    
    ImageCollectionCell *cell = (ImageCollectionCell *)[cv dequeueReusableCellWithReuseIdentifier:@"imageCollectionCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    
    if (indexPath.row % 2)
    {
        cell.placeImage.image = [UIImage imageNamed:@"Barocco.jpg"];
    } else {
        cell.placeImage.image = [UIImage imageNamed:@"PP.jpg"];
    }
    cell.layer.borderWidth = 3;
    cell.layer.borderColor = [[UIColor yellowColor] CGColor];
    return cell;
}
@end
