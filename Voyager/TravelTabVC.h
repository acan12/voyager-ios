//
//  TravelTabVC.h
//  Voyager
//
//  Created by Fanni Saeful Ikhwan.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TravelTVC.h"
#import "HistoryTVC.h"

@interface TravelTabVC : UITabBarController

@property (nonatomic,strong) NSManagedObjectContext *managedObjectContext;

@end
