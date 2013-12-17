//
//  BLRosterDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

#import "BLTeamMemberInfoDto.h"

@interface BLRosterDto : BLKeyValueObject

@property (nonatomic, strong) NSArray *memberList;
@property (nonatomic, strong) NSNumber *ownerId;

@end
