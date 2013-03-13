//
//  Travel.h
//  Voyager
//
//  Created by Fanni Saeful Ikhwan.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Travel : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSDecimalNumber * start_point;
@property (nonatomic, retain) NSDecimalNumber * end_point;
@property (nonatomic, retain) NSDate * time_start;
@property (nonatomic, retain) NSDate * time_end;
@property (nonatomic, retain) NSString * status;

@end
