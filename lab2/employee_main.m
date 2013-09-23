#import<Foundation/Foundation.h>
#import"employee.h"
int main(int argc,char *argv[])
{
	employee *e=[[employee alloc]init];
	[e setename:@"Srinidhi"];
	[e setide:1];
	[e setdomain:@"developer/architect"];
	[e disp];
	[e release];
	return 0;
}
