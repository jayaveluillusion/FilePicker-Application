//
//  AppDelegate.m
//  FPPicker Demo
//
//  Created by Ruben Nine on 13/06/14.
//  Copyright (c) 2014 Ruben Nine. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <FPPicker/FPConfig.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    /*
       Filepicker.io configuration (required)
     */

    [FPConfig sharedInstance].APIKey = @"*";

    /*
       Filepicker.io configuration (optional)
     */

    // [FPConfig sharedInstance].appSecretKey = @"SET_FILEPICKER.IO_APPSECRETKEY_HERE";
    // [FPConfig sharedInstance].storeAccess = @"private";
    // [FPConfig sharedInstance].storeContainer = @"some-alt-container";
    // [FPConfig sharedInstance].storeLocation = @"S3";
    // [FPConfig sharedInstance].storePath = @"some-path-within-bucket/";

    return YES;
}

-(void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification;
{///Gets called only when opening through clicking on notification.
    // NSLog(@"Opened from notification? %@", wasInactive ? @"yes!" : @"no!");
    NSLog(@"didReceiveLocalNotification");
    if (application.applicationState == UIApplicationStateInactive || application.applicationState == UIApplicationStateBackground)
    {
        NSLog(@"opened from a push notification when the app was on background");
    }
    
    
    
    else
    {
        NSLog(@"NOT opened from a push notification when the app was on background");
    }
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

/*
 * This makese the login screens look much nicer on iPad
 */
+ (void)initialize
{
    // Set user agent (the only problem is that we can't modify the User-Agent later in the program)
    NSDictionary *dictionary = @{@"UserAgent":@"Mozilla/5.0 (iPhone; CPU iPhone OS 5_0 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9A334 Safari/7534.48.3"};

    [[NSUserDefaults standardUserDefaults] registerDefaults:dictionary];
}
- (void)application:(UIApplication *)application handleEventsForBackgroundURLSession:(NSString *)identifier completionHandler:(void (^)())completionHandler
{
    NSLog(@"delegate callee");
    
    if ([identifier isEqualToString:@"myBackgroundSessionIdentifier"])
    {
        NSLog(@"handleEventsForBackgroundURLSession->%@",identifier);  //FIRST
        
        //self.backgroundSessionCompletionHandler = completionHandler;
        
       // [[SOTCOfflineDownload DownloadObject]Start_Next_Download];
    }
    else if ([identifier isEqualToString:@"myBackgroundSessionIdentifier"])
    {
        
       // NSURLSessionConfiguration *backgroundConfigObject = [NSURLSessionConfiguration backgroundSessionConfiguration: identifier];
        
       // [UPLoadFiles Static_UPLoadFiles];
        
        NSLog(@"Rejoining session %@\n", identifier.description);
        
    }else if ([identifier isEqualToString:@"myBackgroundSessionIdentifier"])
    {
        
        //NSURLSessionConfiguration *backgroundConfigObject = [NSURLSessionConfiguration backgroundSessionConfiguration: identifier];
        
      //  [DownLoadFiles DownloadObject];
        
        NSLog(@"Rejoining session %@\n", identifier.description);
        
    }
}

@end
