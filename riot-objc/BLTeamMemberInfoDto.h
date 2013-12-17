//
//  BLTeamMemberInfoDto.h
//  riot-objc
//
//  Created by Ash K on 12/17/13.
//  Copyright (c) 2013 Ash K. All rights reserved.
//

#import "BLKeyValueObject.h"

@interface BLTeamMemberInfoDto : BLKeyValueObject

@property (nonatomic, strong) NSString *inviteDate;
@property (nonatomic, strong) NSString *joinDate;
@property (nonatomic, strong) NSNumber *playerId;
@property (nonatomic, strong) NSString *status;

@end
