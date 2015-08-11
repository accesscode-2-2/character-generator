//
//  AthleteManager.m
//  modal
//
//  Created by Fatima Zenine Villanueva on 8/6/15.
//  Copyright (c) 2015 apps. All rights reserved.
//

#import "AthleteManager.h"

@implementation AthleteManager

@synthesize athletes;

#pragma mark Singleton Methods

+ (AthleteManager *)sharedManager {
    static AthleteManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
        sharedMyManager.athletes = [[NSMutableArray alloc]init];
    });
    return sharedMyManager;
}


@end

