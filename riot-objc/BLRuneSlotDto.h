//
//  BLRuneSlotDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLRuneDto.h"

@interface BLRuneSlotDto : BLKeyValueObject

@property (nonatomic, strong) BLRuneDto *rune; // Rune associated with the rune slot.
@property (nonatomic, strong) NSNumber *runeSlotId; // Rune slot ID.

@end
