#import<Foundation/Foundation.h>
@interface employee2:NSObject
{
 char name[100];
 char dept[100];
 int eid;
}
-(void)setname : (char*)string;
-(void)setdept : (char*)string;
-(void)seteid : (int) x;
-(void)print;
@end