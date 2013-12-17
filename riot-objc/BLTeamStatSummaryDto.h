//
//  BLTeamStatSummaryDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLTeamIdDto.h"
#import "BLTeamStatDetailDto.h"

@interface BLTeamStatSummaryDto : BLKeyValueObject

@property (nonatomic, strong) BLTeamIdDto *teamId;
@property (nonatomic, strong) NSArray *teamStatDetails;

@end
