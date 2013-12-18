//
//  BLRuneSlotDto.m
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLRuneSlotDto.h"

@implementation BLRuneSlotDto

- (id)initWithKVDictionary:(NSDictionary *)dict {
    if (self = [super initWithKVDictionary:dict]) {
        self.rune = [BLRuneDto newWithKVDictionary:dict[@"rune"]];
    }
    return self;
}

+ (RuneType_t)runeTypeFromId:(NSNumber *)slotId {
    NSUInteger _slotId = slotId.unsignedIntegerValue;
    if (_slotId >= 1 && _slotId <= 9)
        return MARK;
    else if (_slotId >= 10 && _slotId <= 18)
        return SEAL;
    else if (_slotId >= 19 && _slotId <= 27)
        return GLYPH;
    else if (_slotId >= 28 && _slotId <= 30)
        return QUINTESSENCE;
    return UNDEFINED;
}

+ (NSString *)slotNameFromId:(NSNumber *)slotId {
    static NSArray *runeNames;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        runeNames = @[@"Undefined",
                      @"Mark",
                      @"Seal",
                      @"Glyph",
                      @"Quintessence",
                      ];
    });
    return runeNames[[[self class] runeTypeFromId:slotId]];
}

- (NSString *)slotName {
    return [[self class] slotNameFromId:self.runeSlotId];
}

@end
