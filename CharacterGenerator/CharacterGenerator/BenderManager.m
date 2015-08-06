//
//  BenderManager.m
//  CharacterGenerator
//
//  Created by Mesfin Bekele Mekonnen on 8/6/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import "BenderManager.h"

@implementation BenderManager

+ (id)sharedManager {
    static BenderManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
        self.array = [NSMutableArray new];
    }
    return self;
}

-(void)addBenders:(Bender *)bender{
    [self.array addObject:bender];
}

-(NSMutableArray *)allBenders{
    return self.array;
}
@end
