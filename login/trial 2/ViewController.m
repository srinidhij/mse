//
//  ViewController.m
//  trial 2
//
//  Created by MSE on 31/08/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
{
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"image2.jpeg"]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    
    NSString *usr = userName.text;
    NSString *pwd = password.text;
    
    if(![usr isEqualToString:pwd])
    {
        UIAlertView *failAlert = [[UIAlertView alloc] initWithTitle:@"Login" message:@"Username or password doesnt match, please enter again" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        
        [failAlert show];
        
        //lab.text = password.text;
        
    }
    else
    {
        
        
        secondScreenViewController *s = [[secondScreenViewController alloc]initMyOwn:usr];
        
        
        [self presentViewController:(secondScreenViewController*)s animated:YES completion:nil];
    }
}
@end
