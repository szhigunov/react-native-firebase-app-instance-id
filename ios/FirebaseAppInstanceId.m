#import <React/RCTUtils.h>

#import <Firebase/Firebase.h>
#import "FirebaseAppInstanceId.h"


@implementation FirebaseAppInstanceId
#pragma mark -
#pragma mark Module Setup

RCT_EXPORT_MODULE();

#pragma mark -
#pragma mark Firebase Analytics Methods

RCT_EXPORT_METHOD(getId:
     (RCTPromiseResolveBlock) resolve
      : (RCTPromiseRejectBlock) reject
) {
    resolve([FIRAnalytics appInstanceID]);
}

@end
