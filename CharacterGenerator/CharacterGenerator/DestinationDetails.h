//
//  DestinationDetails.h
//  CharacterGenerator
//
//  Created by Charles Kang on 8/5/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DestinationDetails : NSObject

@property (nonatomic) NSDictionary *destinationDetails;
@property (nonatomic) NSMutableDictionary *destinationValues;

- (void) initializeData; // not sure if we need this or not

@end
