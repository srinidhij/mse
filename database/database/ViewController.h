//
//  ViewController.h
//  database
//
//  Created by MSE on 16/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@interface ViewController : UIViewController
{
    UITextField     *name;
    UITextField *address;
    UITextField *phone;
    //UITextField *delName;
    
    __weak IBOutlet UITextField *myDEL;
    
    __weak IBOutlet UILabel *myStatus;
    UILabel *status;
    UILabel *nameCol;
    UILabel *addrCol;
    UILabel *phCol;
    
   
    NSString *databasePath;
    sqlite3 *contactDB; // A handler to my sqlite3 db
}
/*- (IBAction)findContact:(id)sender;
- (IBAction)saveData:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *phone;
@property (weak, nonatomic) IBOutlet UITextField *address;
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UILabel *status;
 */


@property (retain, nonatomic) IBOutlet UITextField *name;
@property (retain, nonatomic) IBOutlet UITextField *address;
//@property (retain, nonatomic) IBOutlet UITextField *phone;
@property (retain, nonatomic) IBOutlet UITextField *phone;

@property (retain, nonatomic) IBOutlet UILabel *status;
@property (retain, nonatomic) IBOutlet UILabel *nameCol;
@property (retain, nonatomic) IBOutlet UILabel *addrCol;
@property (retain, nonatomic) IBOutlet UILabel *phCol;

- (IBAction)hideKB3:(id)sender;

- (IBAction)hideKB2:(id)sender;

- (IBAction)hideKB:(id)sender;
//- (IBAction)delRecord:(id)sender;
- (IBAction)myDelRec:(id)sender;

- (IBAction)saveData:(id)sender;
- (IBAction)findContact:(id)sender;
- (IBAction)display:(id)sender;


 


@end
