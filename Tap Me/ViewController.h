//
//  ViewController.h
//  Tap Me
//
//  Created by Khairul  on 2/19/15.
//  Copyright (c) 2015 Me Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<UIAlertViewDelegate> {
    IBOutlet UILabel *scoreLabel;
    IBOutlet UILabel *timerLabel;
    
    NSInteger count;
    NSInteger seconds;
    NSTimer *timer;
    
    AVAudioPlayer *buttonBeep;
    AVAudioPlayer *secondBeep;
    AVAudioPlayer *backgroundMusic;
}

- (IBAction)buttonPressed;

@end

