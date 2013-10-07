//
//  secondScreenViewController.m
//  trial 2
//
//  Created by MSE on 31/08/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "secondScreenViewController.h"
#import "ViewController.h"
@interface secondScreenViewController ()

@end

@implementation secondScreenViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    labelName.text = name;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(id) initMyOwn:(NSString *)userName
{
    self = [super initWithNibName:@"secondScreenViewController" bundle:nil];
    if(self)
    {
        name = userName;
        
    }
    return self;
    
}

- (IBAction)back:(id)sender {
    ViewController* view = [[ViewController alloc] init];
    [self presentViewController:view animated:YES completion:nil];
}
@end
