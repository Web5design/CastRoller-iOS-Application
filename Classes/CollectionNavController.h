//
//  CollectionNavController.h
//  CastRoller
//
//  Created by William Spaetzel on 11-02-08.
//  Copyright 2011 CastRoller. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EpisodeViewController.h"

@interface CollectionNavController : UIViewController {
	EpisodeViewController *episodeController;
	IBOutlet UILabel *myLabel;
}

- (IBAction)episodeButtonPressed:(id)sender;
@property (nonatomic, retain) IBOutlet UILabel *myLabel;

@end
