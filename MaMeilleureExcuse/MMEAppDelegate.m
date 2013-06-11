//
//  MMEAppDelegate.m
//  MaMeilleureExcuse
//
//  Created by julien zerbit on 31/03/13.
//  Copyright (c) 2013 JulienS. All rights reserved.
//

#import "MMEAppDelegate.h"
#import "MMEViewController.h"
#import "MMESplashscreenViewController.h"
#import <FacebookSDK/FacebookSDK.h>

@implementation MMEAppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    
    MMEViewController* start = [[[MMEViewController alloc] initWithNibName:@"MMEViewController" bundle:nil] autorelease];
    UINavigationController* mainNav = [[UINavigationController alloc]initWithRootViewController:start];
    
    MMESplashscreenViewController* splash = [[MMESplashscreenViewController alloc]initWithNibName:@"MMESplashscreenViewController" bundle:nil];
    
    
    self.window.rootViewController = mainNav;
    [self.window makeKeyAndVisible];
    
    [mainNav presentViewController:splash animated:NO completion:nil];
    [self performSelector:@selector(removeSplash:) withObject:splash afterDelay:2];
    
    return YES;
}

-(void)removeSplash:(MMESplashscreenViewController*)splash
{
    [splash dismissViewControllerAnimated:NO completion:nil];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
