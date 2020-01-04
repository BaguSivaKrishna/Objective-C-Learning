//
//  AFNetworkApi.m
//  ObjectiveC Learning
//
//  Created by Siva Krishna on 04/01/20.
//  Copyright © 2020 Square. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworkApi.h"
#import <AFNetworking/AFNetworking.h>



//typedef - (void)beginTaskWithCallbackBlock:(void (^)(void))callbackBlock;
@interface AFNetworkApi()
-(void)getPopularItems: (NSString *) url WithCallback:(void (^) (NSData *data))callbackBlock;
- (void)beginTaskWithCallbackBlock:(void (^)(void))callbackBlock;
//    @property(nonatomic, copy) httpRequestResponseHandler complationHandler;
@end




@implementation AFNetworkApi
    static AFNetworkApi *sharedCenter = nil;
    
    +(AFNetworkApi*) sharedCenter {
        if (sharedCenter == nil) {
            sharedCenter = [[super allocWithZone:NULL] init];
        }
        return sharedCenter;
    }
    -(void) getPopularItems:(NSString *)url WithCallback:(void (^)(NSData *))callbackBlock {
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        [manager GET:url parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            callbackBlock(responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
        }];
    }
    
    -(void) getPopularItemsWithCallback:(void (^)(NSData *data))callbackBlock {
        NSString *value = @"https://jsonblob.com/api/jsonBlob/68ba0561-2e34-11ea-ac3c-690027252e7a";

    }
    
    
    -(void) getPopularItems:(NSString*) value {
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        [manager GET:value parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSLog(@"%@",responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
        }];
    }
    
    
    
    
    
    
    -(void)begintaskWithCallBackBlock:(void (^)(NSString *value))callbackBlock {
        callbackBlock(@"value");
    }
    void (^ getPopularItems)(NSString*) = ^(NSString *url) {
        
        return;
    };
    
    
    
    
    double (^ multipleTwoValues)(double, double) = ^(double first, double second) {
        return first * second;
    };
    void (^ simpleBlock)(void) = ^ {
        
    };
    
    - (void) callMethod {
        [self begintaskWithCallBackBlock:^(NSString *value) {
            NSLog(@"%@", value);
        }];
    }
    
@end
