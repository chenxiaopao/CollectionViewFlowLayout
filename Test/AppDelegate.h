//
//  AppDelegate.h
//  Test
//
//  Created by TB-mac-120 on 2019/8/20.
//  Copyright © 2019 TB-mac-120. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

