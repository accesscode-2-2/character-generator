//
//  DestinationsModel.h
//  CharacterGenerator
//
//  Created by Justine Gartner on 8/6/15.
//  Copyright (c) 2015 Mike Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DestinationsModel : NSObject

@property (nonatomic) NSDictionary *destinationDetails;
@property (nonatomic) NSMutableDictionary *destinationValues;
@property (nonatomic) NSMutableArray *userDestinations;

+ (DestinationsModel *)sharedModel;

@end
