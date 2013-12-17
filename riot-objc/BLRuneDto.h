//
//  BLRuneDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

@interface BLRuneDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *_id; // Rune ID.
@property (nonatomic, strong) NSString *name; // Rune name.
@property (nonatomic, strong) NSString *description; // Rune description.
@property (nonatomic, strong) NSNumber *tier; // Rune tier.

@end
