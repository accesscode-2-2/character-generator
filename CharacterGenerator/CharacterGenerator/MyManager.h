//
//  MyManager.h
//  CharacterGenerator
//
//  Created by Chris David on 8/6/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyManager : NSObject {
NSArray *C4QStudent;
}

@property (nonatomic, retain) NSArray *C4QStudent;

+ (id)sharedManager;

@end
