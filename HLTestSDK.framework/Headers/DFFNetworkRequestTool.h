//
//  DFFNetworkRequestTool.h
//
//原生网络请求

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
// DFFNetworkRequestTool.h
  
typedef void(^DFFNetworkRequestCompletionBlock)(NSDictionary * _Nullable jsonDictionary, NSError * _Nullable error);
  
@interface DFFNetworkRequestTool : NSObject
  
+ (void)GET:(NSString *)URLString
  parameters:(NSDictionary * _Nullable)parameters
  completion:(DFFNetworkRequestCompletionBlock)completion;
  
+ (void)POST:(NSString *)URLString
   parameters:(NSDictionary * _Nullable)parameters
   completion:(DFFNetworkRequestCompletionBlock)completion;
  
@end
NS_ASSUME_NONNULL_END
