//
//  ViewController.m
//  database
//
//  Created by MSE on 16/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController


@synthesize name, address, phone, status , nameCol,phCol,addrCol ;//myDel;//delName;




- (IBAction)hideKB3:(id)sender {
    
    [sender resignFirstResponder];
}

- (IBAction)hideKB2:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)hideKB:(id)sender {
    
    [sender resignFirstResponder];
}

/*- (IBAction)delRecord:(id)sender
{
    
   const char *dbpath = [databasePath UTF8String];
    sqlite3_stmt    *statement;
    
    if (sqlite3_open(dbpath, &contactDB) == SQLITE_OK)
    {
        NSString *querySQL = [NSString stringWithFormat:
                              @"DELETE FROM contacts WHERE name=\"%@\"",
                              delName.text];
        
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(contactDB,query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            status.text = @"Yess! Deleted :P";
        }
    }
}*/

- (IBAction)myDelRec:(id)sender {
    
    const char *dbpath = [databasePath UTF8String];
    sqlite3_stmt    *statement = NULL;
    
    if (sqlite3_open(dbpath, &contactDB) == SQLITE_OK)
    {
        NSString *querySQL = [NSString stringWithFormat:
                              @"DELETE FROM contacts WHERE name=\"%@\"",
                              myDEL.text];
        
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(contactDB,query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            
           // sqlite3_bind_text(statement, 1, [_testId UTF8String], -1, SQLITE_STATIC);
            
            if(SQLITE_DONE != sqlite3_step(statement))
            {
                NSLog(@"Error while Deleting");
            }
            else{
                myStatus.text = @"Yess! Deleted :P";
            }
        }
        
    }
   
    sqlite3_finalize(statement);
}

- (IBAction)saveData:(id)sender
{
    sqlite3_stmt    *statement;
    const char *dbpath = [databasePath UTF8String];
    if (sqlite3_open(dbpath, &contactDB) == SQLITE_OK)
    {
     
        NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO CONTACTS(name, address, phone) VALUES (\"%@\", \"%@\", \"%@\")",name.text, address.text, phone.text];
        const char *insert_stmt = [insertSQL UTF8String];
        sqlite3_prepare_v2(contactDB, insert_stmt,-1, &statement, NULL);
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
            myStatus.text = @"Contact added";
            name.text = @"";
            address.text = @"";
            phone.text = @"";
        } else {
            myStatus.text = @"Failed to add contact";
        }
        sqlite3_finalize(statement);
        sqlite3_close(contactDB);
    
    }

}


-(IBAction)findContact:(id)sender
{
    
    {
        const char *dbpath = [databasePath UTF8String];
        sqlite3_stmt    *statement;
        
        if (sqlite3_open(dbpath, &contactDB) == SQLITE_OK)
        {
            NSString *querySQL = [NSString stringWithFormat:
                                  @"SELECT address, phone FROM contacts WHERE name=\"%@\"",
                                  name.text];
            
            const char *query_stmt = [querySQL UTF8String];
            
            if (sqlite3_prepare_v2(contactDB,query_stmt, -1, &statement, NULL) == SQLITE_OK)
            {
                if (sqlite3_step(statement) == SQLITE_ROW)
                {
                    NSString *addressField = [[NSString alloc]initWithUTF8String:(const char *) sqlite3_column_text(statement, 0)];
                    address.text = addressField;
                    
                    NSString *phoneField = [[NSString alloc]initWithUTF8String:(const char *)sqlite3_column_text(statement, 1)];
                    phone.text = phoneField;
                    
                    myStatus.text = @"Match found";
                    
                    
                } else {
                    myStatus.text = @"Match not found";
                    address.text = @"";
                    phone.text = @"";
                }
                sqlite3_finalize(statement);
            }
            sqlite3_close(contactDB);
        }
    }
}



- (void)viewDidLoad
{
    //[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
        NSString *docsDir;
        NSArray *dirPaths;
        
        // Get the documents directory
        dirPaths = NSSearchPathForDirectoriesInDomains(
                                                       NSDocumentDirectory, NSUserDomainMask, YES);
        
        docsDir = [dirPaths objectAtIndex:0];
        
        // Build the path to the database file
        databasePath = [[NSString alloc]
                        initWithString: [docsDir stringByAppendingPathComponent:
                                         @"contacts.db"]];
        
        NSFileManager *filemgr = [NSFileManager defaultManager];
        
        if ([filemgr fileExistsAtPath: databasePath ] == NO)
        {
            const char *dbpath = [databasePath UTF8String];
            
            if (sqlite3_open(dbpath, &contactDB) == SQLITE_OK)
            {
                char *errMsg;
                const char *sql_stmt = "CREATE TABLE IF NOT EXISTS CONTACTS (ID INTEGER PRIMARY KEY AUTOINCREMENT, NAME TEXT, ADDRESS TEXT, PHONE TEXT)";
                
                if (sqlite3_exec(contactDB, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
                {
                    status.text = @"Failed to create table";
                }
                
                sqlite3_close(contactDB);
                
            } else {
                myStatus.text = @"Failed to open/create database";
            }
        }
        
        [super viewDidLoad];
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)display:(id)sender
{
    
    const char *dbpath = [databasePath UTF8String];
    sqlite3_stmt    *statement;
    NSMutableString *dispName = [[NSMutableString alloc]init];
    NSMutableString *dispAddr = [[NSMutableString alloc]init];
    NSMutableString *dispPh = [[NSMutableString alloc]init];
    
    if (sqlite3_open(dbpath, &contactDB) == SQLITE_OK)
    {
        NSString *querySQL = [NSString stringWithFormat:
                              @"SELECT * FROM contacts"];
        
        const char *query_stmt = [querySQL UTF8String];
        
        if (sqlite3_prepare_v2(contactDB, query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
    
            while(sqlite3_step(statement) == SQLITE_ROW)
            {
                char *field1 = (char *) sqlite3_column_text(statement,1); //2nd Column Value
                NSString *field1Str = [[NSString alloc] initWithUTF8String: field1];
                char *field2 = (char *) sqlite3_column_text(statement,2);
                NSString *field2Str = [[NSString    alloc] initWithUTF8String: field2];
                char *field3 = (char *) sqlite3_column_text(statement,3);
                NSString *field3Str = [[NSString    alloc] initWithUTF8String: field3];
               
                
                [dispName appendString:field1Str];
                [dispName appendFormat:@"\n"]; //For this to work set the No. of lines property of the label as zero in the right side explorer via .xib file, oki !IMPORTANT
                
                [dispAddr appendString:field2Str];
                [dispAddr appendFormat:@"\n"];
                
                [dispPh appendString:field3Str];
                [dispPh appendFormat:@"\n"];
                
                
                
            }
            
            
            nameCol.text = dispName;
            addrCol.text = dispAddr;
            phCol.text = dispPh;
            
            
        }
    }
}


@end
