#import <Foundation/Foundation.h>
#import "phonebook.h"
#import "phonecard.h"

int main()
{
	NSAutoreleasePool *myPool = [[NSAutoreleasePool alloc] init];
	phonecard *p1=[[phonecard alloc]init];
	phonecard *p2=[[phonecard alloc]init];
	phonecard *p3=[[phonecard alloc]init];

	[p1 setName:@"Srinidhi"];
	[p1 setEmail:@"srinidhij.21@gmail.com"];
	[p1 setNo:1];
	
	[p2 setName:@"asdfas"];
	[p2 setEmail:@"asdfasdf@gmail.com"];
	[p2 setNo:2];

	[p3 setName:@"asdfasdf"];
	[p3 setEmail:@"sdfasdfsadf@gmail.com"];
	[p3 setNo:3];
	
	phonebook *p_book=[[phonebook alloc]initWithName:@"Srinidhi's book"];
	
	[p_book addobj:p1];
	[p_book addobj:p2];
	[p_book addobj:p3];
	NSLog(@"Searching for Srinidhi s details\nEnter Name\nSrinidhi or dsfsadf or asdfasdf 's");
	//NSString *fd;
	//[p_book findByName:fd];
	//[p_book print];
	[p_book findByName:@"faku"];
	[p_book print];
	[myPool drain];
	return 0;
}
