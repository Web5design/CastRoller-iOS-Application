//
//  WebViewWatcher.h
//  CastRoller
//
//  Created by William Spaetzel on 11-02-08.
//  Copyright 2011 CastRoller. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface WebViewWatcher : NSObject <UIWebViewDelegate>{
	Boolean initLoaded;
	UINavigationController *navController;
}

@end
