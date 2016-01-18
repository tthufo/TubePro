//
//  LTRequest.h
//
//  Created by thanhhaitran on 3/3/15.
//  Copyright (c) 2015 libreteam. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^RequestCompletion)(NSString * responseString, NSError * error, BOOL isValidated);

typedef void (^RequestCache)(NSString * cacheString);

@interface LTRequest : NSObject

@property(nonatomic,copy) RequestCompletion completion;

@property(nonatomic,copy) RequestCache cache;

@property (nonatomic, retain) NSString * deviceToken;

@property (nonatomic, retain) NSString * address;


+ (LTRequest*)sharedInstance;

- (void)initRequest;

- (void)didRequestInfo:(NSDictionary*)dict withCache:(RequestCache)cache andCompletion:(RequestCompletion)completion;

- (void)registerPush;

- (void)didReceiveToken:(NSData *)deviceToken;

- (void)didFailToRegisterForRemoteNotification:(NSError *)error;

- (void)didReceiveRemoteNotification:(NSDictionary *)userInfo;

@end
