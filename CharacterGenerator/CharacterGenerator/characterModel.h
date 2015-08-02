//
//  characterModel.h
//  CharacterGenerator
//
//  Created by Henna on 8/2/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface characterModel : NSObject

@property (nonatomic) NSArray *allCharacters;
-(void) initializeCharacters;

@end
