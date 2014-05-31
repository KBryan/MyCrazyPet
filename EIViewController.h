//
//  EIViewController.h
//  MyCrazyPet
//
//  Created by Kwame Bryan on 2014-05-28.
//  Copyright (c) 2014 Kwame Bryan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EIViewController : UIViewController

// player objects
@property (nonatomic) int petLives;
@property (nonatomic,strong) NSString *petNames;
@property (nonatomic,strong) NSArray *petObjects;
@property (nonatomic) int petCount;
@property (nonatomic) int petBreed;
@property (nonatomic,strong) NSArray *playerLayout;
// player methods
-(void) playerCount;
-(void) playerScore:(int)playerScoreReturned;
-(void) playerRange: (float)isPlayerInRange;
-(int) returnPlayerScore;
-(void) isPlayerInRange;

@end
