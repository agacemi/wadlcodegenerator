[#ftl]
#import "${projectPrefix}Enum.h"

@implementation ${projectPrefix}Enum
    -(id)initWithString:(NSString *)stringValue withType:(NSInteger) type {
        self = [super init];
        if(self){
            self.type = type;
            self.value = stringValue;
        }
        return self;
    }

    +(id)fromString:(NSString *)string {
        return nil;
    }
@end