//
//  EIAppDelegate.m
//  MyCrazyPet
//
//  Created by Kwame Bryan on 2014-05-26.
//  Copyright (c) 2014 Kwame Bryan. All rights reserved.
//

#import "EIAppDelegate.h"
#import <Parse/Parse.h>

@implementation EIAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [Parse setApplicationId:@"KAcJObPUdjVm118lwa8mILI2H2ILj8hiyiN3cneH"
                  clientKey:@"uQFwLLtpVfbDCiwzEL48ErZlFe8MlHiiY50dHyPw"];
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];
    PFObject *pets = [PFObject objectWithClassName:@"PetStore"];
    [pets setObject:@"DogPic" forKey:@"DogPicItem"];
    pets[@"petitem2"] = @"Great Dane";
    [pets saveInBackground];
    
    if (![PFUser currentUser]) {
        [self presentLoginControllerAniated:YES];
    }
                             
    [self.window makeKeyAndVisible];
    [self presentLoginControllerAniated:YES];
    return YES;
}
-(void)presentLoginControllerAniated:(BOOL)animated {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    UINavigationController *logNavigationController = [storyboard instantiateViewControllerWithIdentifier: @"loginNav"];
    [self.window.rootViewController presentViewController:logNavigationController animated:animated completion:nil];
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
