#import "CDVEdgeProtect.h"

@implementation CDVEdgeProtect

- (void) pluginInitialize
{
    NSLog(@"Plugin initialized, hiding home indicator by default");
}

@end

@interface CDVViewController (CDVEdgeProtect)
- (BOOL)preferredScreenEdgesDeferringSystemGestures;
@end

@implementation CDVViewController (CDVEdgeProtect)
-(UIRectEdge)preferredScreenEdgesDeferringSystemGestures
{
    return UIRectEdgeAll;
}
@end
