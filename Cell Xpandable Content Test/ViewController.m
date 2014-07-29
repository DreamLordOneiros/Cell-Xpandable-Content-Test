//
//  ViewController.m
//  Cell Xpandable Content Test
//
//  Created by Chanti... on 7/24/14.
//  Copyright (c) 2014 Chanti... All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize  myArray, mutableContent, myTableView, selectedIP, previousIP, imagesDictionary;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    imagesDictionary = [[NSDictionary alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource: @"ImagesPL" ofType:@"plist"]];
    myArray = [[[NSDictionary alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource: @"PlacesPL" ofType:@"plist"]] objectForKey:@"hotels"];
    
    mutableContent = [self prepareContentForTable:myArray];
    selectedIP = [NSIndexPath indexPathForRow:selectedIP.row-100 inSection:selectedIP.section];
}

-(NSMutableArray*) prepareContentForTable:(NSArray*)array
{
    NSMutableArray * mutableArray = [[NSMutableArray alloc] init];
    for (NSDictionary * dataSet in array)
    {
        [mutableArray addObject:dataSet];
        [mutableArray addObject:[dataSet objectForKey:@"name"]];
    }
    return mutableArray;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [mutableContent count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ContentCustomCell * cell;
    
    if ([mutableContent[indexPath.row] isKindOfClass:[NSDictionary class]])
    {
        NSDictionary * data = mutableContent[indexPath.row];
        /*cell = (ContentCustomCell*)[tableView dequeueReusableCellWithIdentifier:@"contentCell" forIndexPath:indexPath];
        cell.myImage.image = [UIImage imageNamed:[imagesDictionary valueForKey:[data objectForKey:@"name"]]];
        cell.labelAddress.text = [data objectForKey:@"address"];
        cell.labelPhone.text = [data objectForKey:@"phone"];
        cell.labelWebData.text = [data objectForKey:@"webdata"];
        
        [cell.myImage.layer setOpacity:0.8f];
        [cell.myImage.layer setCornerRadius:20.0f];
        cell.myImage.layer.masksToBounds = YES;
        
        cell.myImage.layer.borderColor = [[UIColor colorWithRed:24.0/255.0 green:68.0/255.0 blue:112.0/255.0 alpha:1.0] CGColor];
         cell.myImage.layer.borderWidth = 4.0f;*/
        CollectionCell *cell = cell = (CollectionCell*)[tableView dequeueReusableCellWithIdentifier:@"collectionCell" forIndexPath:indexPath];
        
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        PlaceCollection * theVC = [sb instantiateViewControllerWithIdentifier:@"PlacesCollectionView"];
        [self addChildViewController:theVC];
        CGRect frame = theVC.view.frame;
        frame.origin.y = 0.0;
        frame.size.height = 240.0f;
        theVC.view.frame = frame;
        [cell addSubview:theVC.view];
        
        [theVC updateContentWithDictionary:data];
        return cell;
    }
    else
    {
        StandarCustomCell * cellSC = (StandarCustomCell*)[tableView dequeueReusableCellWithIdentifier:@"standarCell" forIndexPath:indexPath];
        [cellSC.myLabel setText:mutableContent[indexPath.row]];
        return cellSC;
    }
    
    [cell clipsToBounds];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(![mutableContent[indexPath.row] isKindOfClass:[NSDictionary class]])
    {
        previousIP = selectedIP;
        selectedIP = [NSIndexPath indexPathForRow:(indexPath.row - 1) inSection:selectedIP.section];
        
        [tableView beginUpdates];
        [tableView endUpdates];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([mutableContent[indexPath.row] isKindOfClass:[NSDictionary class]])
    {
        if ([indexPath compare:selectedIP] == NSOrderedSame)
        {
            if ([selectedIP compare:previousIP] == NSOrderedSame)
            {
                selectedIP = [NSIndexPath indexPathForRow:(indexPath.row - 100) inSection:selectedIP.section];
                return 0;
            }
            return 160;
        }
        return 0;
    }
    return 44;
}

@end
