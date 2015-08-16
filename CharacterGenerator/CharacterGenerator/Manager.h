//
//  Manager.h
//  CharacterGenerator
//
//  Created by Z on 8/6/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "COD4database.h"
#import "Soldier.h"

@interface Manager : NSObject

-(void)addRecruit:(Soldier*)recruit;
-(Soldier*)recruitAtIndex:(NSInteger)index;

+ (instancetype)sharedInstance;

@property (nonatomic) NSMutableArray *myRecruits;

@end
