//
//  TravelTVC.m
//  Voyager
//
//  Created by Fanni Saeful Ikhwan.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "TravelTVC.h"

@interface TravelTVC ()

@end

@implementation TravelTVC

@synthesize fetchedResultsController = __fetchedResultsController;
@synthesize managedObjectContext = __managedObjectContext;
@synthesize selectedTravel;

// Core Data action
// ----------------
- (void) setupFetchedResultsController
{
    NSString *entityName = @"Travel";
    NSLog(@"Setting up the fetched result controller for the entity named : %@",entityName);
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:entityName];
    
    request.sortDescriptors = [NSArray arrayWithObject:[NSSortDescriptor sortDescriptorWithKey:@"title" ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)]];
    
    self.fetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:request managedObjectContext:self.managedObjectContext sectionNameKeyPath:nil cacheName:nil];
    
    [self performFetch];
}

// ----------------

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self setupFetchedResultsController];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Travel Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    Travel *travel = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    UIImageView *defaultImageView = (UIImageView *)[cell viewWithTag:100];
    defaultImageView.image = [UIImage imageNamed:@"5.jpg"];
    
    UILabel *titleTravelLabel = (UILabel *)[cell viewWithTag:101];
    titleTravelLabel.text = travel.title;
    
    UILabel *travelDescriptionLabel = (UILabel *)[cell viewWithTag:102];
    travelDescriptionLabel.text = @"description";
    
//    cell.textLabel.text = travel.title;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

// UI Action
// -------------------

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Add Travel Segue"]) {
        NSLog(@"Setting TravelTVC as AddTravelTVC delegate");
        
        AddTravelTVC *addTravelTVC = segue.destinationViewController;
        addTravelTVC.delegate = self;
        
        addTravelTVC.managedObjectContext = self.managedObjectContext;
    } else if ([segue.identifier isEqualToString:@"Travel Detail Segue"]) {
        
        TravelDetailVC *travelDetailVC = segue.destinationViewController;
        travelDetailVC.managedObjectContext = self.managedObjectContext;
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        self.selectedTravel = [self.fetchedResultsController objectAtIndexPath:indexPath];
        
        NSLog(@"Passing selected role (%@) to RoleDetailTVC", self.selectedTravel.title);
        travelDetailVC.travel = self.selectedTravel;
    }
}

- (void)theSaveButtonOnTheAddTravelTVCWasTapped:(AddTravelTVC *)controller
{
    [controller.navigationController popViewControllerAnimated:YES];
    
}

// --------------------
@end
