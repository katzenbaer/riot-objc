//
//  BLMasteryPageDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLTalentDto.h"

@interface BLMasteryPageDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *current; // Indicates if the mastery page is the current mastery page.
@property (nonatomic, strong) NSString *name; // Mastery page name.
@property (nonatomic, strong) NSArray *talents; // List of mastery page talents associated with the mastery page.

@end
