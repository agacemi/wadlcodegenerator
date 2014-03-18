[#ftl]
[#--template for the client-side enum declaration.--]
// Generated by xsd compiler for ios/objective-c
// DO NOT CHANGE!

#import "${generatedPrefix}${enum.name}.h"

[#if enum.docComment??]
/**
 @file
 ${enum.docComment?chop_linebreak?replace("\n", "\n ")?replace("\t", "")}
*/
[/#if]
  [#list enum.enumConstants as constant]

  [#if constant.docComment??]
/**
 ${constant.docComment?replace("\n", "\n ")?replace("\t", "")}
*/
  [/#if]
${generatedPrefix}${enum.name} * ${enum.name?upper_case}_${constant.name?upper_case};
  [/#list]

@interface ${generatedPrefix}${enum.name} ()

@end

@implementation ${generatedPrefix}${enum.name}

+(id)fromString:(NSString *)string {
[#list enum.enumConstants as constant]
    [#if constant_index = 0]if[#else]else if[/#if]([${enum.name?upper_case}_${constant.name?upper_case}.value isEqualToString:string]){
        return ${enum.name?upper_case}_${constant.name?upper_case};
    }
[/#list]
    return nil;
}

+ (void)load {
[#list enum.enumConstants as constant]
    ${enum.name?upper_case}_${constant.name?upper_case} = [[${generatedPrefix}${enum.name} alloc] initWithString:@"${constant.value}" withType:${enum.name}_${constant.name?capitalize}];
[/#list]
}

@end