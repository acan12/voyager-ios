//
//  HistoryTVC.h
//  Voyager
//
//  Created by Fanni Saeful Ikhwan.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CoreDataTableViewController.h"

@interface HistoryTVC : CoreDataTableViewController

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic,strong) NSManagedObjectContext *managedObjectContext;

@end
