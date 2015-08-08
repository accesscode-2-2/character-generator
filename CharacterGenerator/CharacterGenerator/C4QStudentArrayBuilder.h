//
//  C4QStudentArrayBuilder.h
//  CharacterGenerator
//
//  Created by Elber Carneiro on 8/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface C4QStudentArrayBuilder : NSObject

@property (nonatomic, readonly) NSArray *C4QMentorArray;
@property (nonatomic) NSMutableArray *C4QStudentArray;

- (void)initializeMentorArray;
- (void)initializeStudentArray;

@end
