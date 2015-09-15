//
//  ViewController.m
//  Example
//
//  Created by joshua li on 15/9/15.
//
//

#import "ViewController.h"

#import "EmotionControl.h"

@interface ViewController ()
@property(strong, nonatomic) EmotionControl *control;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    _control = [[EmotionControl alloc] init:CGRectMake(0.0, CGRectGetHeight(self.view.bounds), CGRectGetWidth(self.view.bounds), 216)];
    [_control setup:YES withSend:YES];
    [_control setDelegate:self];
    _control.alpha = 1.0;
    [_control showEmotionTo:self.view];
    
    
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [_control moveTo:100.0];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    
}

@end
