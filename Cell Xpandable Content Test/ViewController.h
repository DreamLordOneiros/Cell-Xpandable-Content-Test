//
//  ViewController.h
//  Cell Xpandable Content Test
//
//  Created by Chanti... on 7/24/14.
//  Copyright (c) 2014 Chanti... All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContentCustomCell.h"
#import "StandarCustomCell.h"
#import "CollectionCell.h"
#import "PlaceCollection.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@property (strong, nonatomic) NSArray * myArray;
@property (strong, nonatomic) NSMutableArray * mutableContent;

@property (strong, nonatomic) NSIndexPath * selectedIP;
@property (strong, nonatomic) NSIndexPath * previousIP;

@property (strong, nonatomic) NSDictionary * imagesDictionary;

@end
