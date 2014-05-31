//
//  EIAppDelegate.h
//  MyCrazyPet
//
//  Created by Kwame Bryan on 2014-05-26.
//  Copyright (c) 2014 Kwame Bryan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ParseLoginViewController.h"

@interface EIAppDelegate : UIResponder <UIApplicationDelegate, PFLogInViewControllerDelegate, NSURLConnectionDataDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSMutableData* profilePictureData;

@end
