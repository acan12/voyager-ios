//
//  TravelDetailVC.h
//  Voyager
//
//  Created by Fanni Saeful Ikhwan.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Travel.h"

@class TravelDetailVC;
@protocol TravelDetailVCDelegate

- (void)theEditButtonOnTravelDetailVCWasTapped:(TravelDetailVC *)controller;

@end

@interface TravelDetailVC : UIViewController<UIScrollViewDelegate>

@property (nonatomic, weak) id<TravelDetailVCDelegate> delegate;
@property (nonatomic, strong) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, strong) Travel *travel;

@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UIPageControl *pageControl;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@end
