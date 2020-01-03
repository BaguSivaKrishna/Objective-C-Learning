//
//  AppDelegate.h
//  ObjectiveC Learning
//
//  Created by Siva Krishna on 03/01/20.
//  Copyright © 2020 Square. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

