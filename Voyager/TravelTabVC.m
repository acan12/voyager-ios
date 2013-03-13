//
//  TravelTabVC.m
//  Voyager
//
//  Created by Fanni Saeful Ikhwan.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "TravelTabVC.h"

@interface TravelTabVC ()

@end

@implementation TravelTabVC
@synthesize managedObjectContext = __managedObjectContext;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    //    // The Tab Bar
    //    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    //    
    //    // The Two Navigation Controllers attached to the Tab Bar (At Tab Bar Indexes 0 and 1)
    UINavigationController *travelTVCnav = [[self viewControllers] objectAtIndex:0];
    UINavigationController *historyTVCnav = [[self viewControllers] objectAtIndex:1];
    //    
    //    // The Persons Table View Controller (First Nav Controller Index 0)
    TravelTVC *travelTVC = [[travelTVCnav viewControllers] objectAtIndex:0];
    travelTVC.managedObjectContext = self.managedObjectContext;    
    //    
    //    // The Roles Table View Controller (Second Nav Controller Index 0)
    HistoryTVC *historyTVC = [[historyTVCnav viewControllers] objectAtIndex:0];
    historyTVC.managedObjectContext = self.managedObjectContext;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
