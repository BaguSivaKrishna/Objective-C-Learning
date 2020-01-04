//
//  AFNetworkApi.h
//  ObjectiveC Learning
//
//  Created by Siva Krishna on 04/01/20.
//  Copyright © 2020 Square. All rights reserved.
//

#ifndef AFNetworkApi_h
#define AFNetworkApi_h


#endif /* AFNetworkApi_h */

@interface AFNetworkApi : NSObject
+(AFNetworkApi *) sharedCenter;
-(void)getPopularItems: (NSString *) url WithCallback:(void (^) (NSData *data))callbackBlock;
-(void)getPopularItems:(NSString*) value;
@end
