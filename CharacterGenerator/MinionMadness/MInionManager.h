//
//  MInionManager.h
//  MinionMadness
//
//  Created by Jovanny Espinal on 8/8/15.
//  Copyright (c) 2015 Jovanny Espinal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

@interface MinionManager : NSObject

@property (nonatomic) NSMutableArray *mutableMinion;

+(id)sharedManager;
-(void)addMinion:(Character *)minion;
-(NSMutableArray *)allMinions;



@end
