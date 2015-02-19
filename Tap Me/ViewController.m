//
//  ViewController.m
//  Tap Me
//
//  Created by Khairul  on 2/19/15.
//  Copyright (c) 2015 Me Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupGame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    count++;
    
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%li", (long)count];
}

- (void)setupGame {
    seconds = 10;
    count = 0;
    
    timerLabel.text = [NSString stringWithFormat:@"Times: %li", (long)seconds];
    scoreLabel.text = [NSString stringWithFormat:@"Score\n%li", (long)count];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(subtractTime) userInfo:nil repeats:YES];
}

- (void)subtractTime {
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Times: %li", (long)seconds];
    
    if (seconds == 0) {
        [timer invalidate];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!" message:[NSString stringWithFormat:@"You scored %li points", (long)count] delegate:self cancelButtonTitle:@"Play Again" otherButtonTitles:nil, nil];
        
        [alert show];
    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self setupGame];
}

@end
