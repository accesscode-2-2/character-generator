//
//  AthleteManager.h
//  modal
//
//  Created by Fatima Zenine Villanueva on 8/6/15.
//  Copyright (c) 2015 apps. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AthleteManager : NSObject

@property (nonatomic, retain) NSMutableArray *athletes;
+ (AthleteManager *)sharedManager;

@end