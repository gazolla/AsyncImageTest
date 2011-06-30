//
//  AsyncImageTestAppDelegate.h
//  AsyncImageTest
//
//  Created by sebastiao Gazolla Costa Junior on 29/06/11.

#import <UIKit/UIKit.h>

@class AsyncImageTestViewController;

@interface AsyncImageTestAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet AsyncImageTestViewController *viewController;

@end
