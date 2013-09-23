#import<Foundation/Foundation.h>
#import "employee2.h"

@implementation employee2
-(void)setname : (const char*)astring;
{
strcpy(name,astring);
}
-(void)setdept : (const char*)bstring;
{
strcpy(dept,bstring);
}
-(void)seteid : (int) x;
{
eid=x;
}
-(void)print
{
printf("%s\n",name);
printf("%s\n",dept);
printf("%d\n",eid);
}
@end