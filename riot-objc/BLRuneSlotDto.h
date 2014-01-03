//
//  BLRuneSlotDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLRuneDto.h"

typedef enum {
    UNDEFINED = 0,
    MARK,
    SEAL,
    GLYPH,
    QUINTESSENCE,
} RuneType_t;

@interface BLRuneSlotDto : BLKeyValueObject

@property (nonatomic, strong) BLRuneDto *rune; // Rune associated with the rune slot.
@property (nonatomic, strong) NSNumber *runeSlotId; // Rune slot ID.

+ (RuneType_t)runeTypeFromId:(NSNumber *)slotId;
+ (NSString *)slotNameFromId:(NSNumber *)slotId;
- (NSString *)slotName;

@end
