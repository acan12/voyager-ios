//
//  AddTravelTVC.h
//  Voyager
//
//  Created by Fanni Saeful Ikhwan.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Travel.h"

@class AddTravelTVC;
@protocol AddTravelTVCDelegate

- (void)theSaveButtonOnTheAddTravelTVCWasTapped:(AddTravelTVC *)controller;

@end

@interface AddTravelTVC : UITableViewController

@property (nonatomic, weak) id<AddTravelTVCDelegate> delegate;
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) IBOutlet UITextField *titleNameTextField;
@property (strong, nonatomic) IBOutlet UITextField *startPointTextField;
@property (strong, nonatomic) IBOutlet UITextField *endPointTextField;

- (IBAction)save:(id)sender;

@end
