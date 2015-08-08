//
//  BenderManager.h
//  CharacterGenerator
//
//  Created by Mesfin Bekele Mekonnen on 8/6/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Bender.h"

@interface BenderManager : NSObject

@property (nonatomic) NSMutableArray *array;

+(id)sharedManager;
-(void)addBenders:(Bender *)bender;
-(NSMutableArray *)allBenders;

@end

