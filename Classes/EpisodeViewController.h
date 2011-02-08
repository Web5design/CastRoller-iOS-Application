//
//  EpisodeViewController.h
//  CastRoller
//
//  Created by William Spaetzel on 11-02-07.
//  Copyright 2011 CastRoller. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface EpisodeViewController : UIViewController {
	IBOutlet UIWebView *episodeWebView;
	NSInteger episodeId;
}

- (void)displayEpisode;

@property (nonatomic, retain) IBOutlet UIWebView *episodeWebView;
@property (assign) NSInteger episodeId;


@end
