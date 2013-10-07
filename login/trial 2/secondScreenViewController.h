//
//  secondScreenViewController.h
//  trial 2
//
//  Created by MSE on 31/08/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface secondScreenViewController : UIViewController
{
 
    
    @public __weak IBOutlet UILabel *labelName;
    
    __weak NSString *name;
}

-(id) initMyOwn:(NSString *)userName;
- (IBAction)back:(id)sender;

@end
