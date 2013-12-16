//
//  BLRawStatDto.h
//  riot-objc
//
//  Created by Ash K on 12/16/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BLKeyValueObject.h"

@interface BLRawStatDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *_id; // Raw stat ID.
@property (nonatomic, strong) NSString *name; // Raw stat name.
@property (nonatomic, strong) NSNumber *value; // Raw stat value.

@end
