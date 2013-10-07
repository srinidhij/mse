//
//  ViewController.h
//  trial 2
//
//  Created by MSE on 31/08/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "secondScreenViewController.h"


@interface ViewController : UIViewController{
    
    __weak IBOutlet UITextField *userName;
    
    __weak IBOutlet UITextField *password;
    
    __weak IBOutlet UILabel *lab;
    
}
- (IBAction)click:(id)sender;
@end
