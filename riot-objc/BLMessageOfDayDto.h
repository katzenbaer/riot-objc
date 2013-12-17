//
//  BLMessageOfDayDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

@interface BLMessageOfDayDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *createDate;
@property (nonatomic, strong) NSString *message;
@property (nonatomic, strong) NSNumber *version;

@end
