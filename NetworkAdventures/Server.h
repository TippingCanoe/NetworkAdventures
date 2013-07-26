//
//  Server.h
//  NetworkAdventures
//
//  Created by Jeff on 2013-07-26.
//  Copyright (c) 2013 Tipping Canoe. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    ServerTypeSMB
} ServerType;

@interface Server : NSObject
@property (nonatomic,retain) NSString *domesticName;
@property (nonatomic,retain) NSString *userName;
@property (nonatomic,retain) NSString *password;
@property (nonatomic,retain) NSString *hostName;
@property (nonatomic,retain) NSString *domainName;
@property (nonatomic,retain) NSString *ipAddress;
@property (nonatomic) ServerType type;

- (void)authenticate;

@end
