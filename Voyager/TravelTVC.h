//
//  TravelTVC.h
//  Voyager
//
//  Created by Fanni Saeful Ikhwan.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddTravelTVC.h"
#import "TravelDetailVC.h"
#import "CoreDataTableViewController.h"

#import "Travel.h"

@interface TravelTVC : CoreDataTableViewController<AddTravelTVCDelegate>

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic,strong) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) Travel *selectedTravel;

@end
