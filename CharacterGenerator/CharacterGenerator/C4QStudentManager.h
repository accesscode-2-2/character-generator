//
//  C4QStudentManager.h
//  CharacterGenerator
//
//  Created by Elber Carneiro on 8/7/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <foundation/Foundation.h>

@interface C4QStudentManager : NSObject {
    NSMutableArray *C4QStudentArray;
    NSArray *C4QMentorArray;
}

@property (nonatomic, retain) NSMutableArray *C4QStudentArray;
@property (nonatomic, retain) NSArray *C4QMentorArray;

+ (id)sharedC4QStudentManager;
- (void)addNewStudentWithName:(NSString *)name
                       gender:(NSString *)gender
                    residence:(NSString *)residence
                 andImageName:(NSString *)imageName;

@end
