//
//  ViewController.h
//  ObjectiveC Learning
//
//  Created by Siva Krishna on 03/01/20.
//  Copyright © 2020 Square. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "api/AFNetworkApi.h"

@interface ViewController : UIViewController

    @property(nonatomic, copy) AFNetworkApi *networkingApi;
@end


