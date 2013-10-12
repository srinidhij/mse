#import <Foundation/Foundation.h>
@interface metric:NSObject {
	NSMutableDictionary *metrics;
}
-(void)addMetric:(NSString*)metricKey withValue:(int)metricValue;
-(void)print;
@end