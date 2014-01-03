//
//  BLTeamStatSummaryDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLTeamStatDetailDto.h"

@interface BLTeamStatSummaryDto : BLKeyValueObject

@property (nonatomic, strong) NSString *fullId;
@property (nonatomic, strong) NSSet *teamStatDetails;

@end
