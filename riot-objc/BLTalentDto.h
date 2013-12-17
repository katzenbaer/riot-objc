//
//  BLTalentDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

@interface BLTalentDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *_id; // Talent id.
@property (nonatomic, strong) NSString *name; // Talent name.
@property (nonatomic, strong) NSNumber *rank; // Talent rank.

@end
