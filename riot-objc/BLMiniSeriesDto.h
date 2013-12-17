//
//  BLMiniSeriesDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

@interface BLMiniSeriesDto : BLKeyValueObject

@property (nonatomic, strong) NSNumber *losses;
@property (nonatomic, strong) NSString *progress;
@property (nonatomic, strong) NSNumber *target;
@property (nonatomic, strong) NSNumber *timeLeftToPlayMillis;
@property (nonatomic, strong) NSNumber *wins;

@end
