#import "USRVPreferencesError.h"

static NSString *unityServicesPreferencesCouldntGetValue = @"COULDNT_GET_VALUE";

NSString *USRVNSStringFromPreferencesError(UnityServicesPreferencesError error) {
    switch (error) {
        case kUnityServicesPreferencesCouldntGetValue:
            return unityServicesPreferencesCouldntGetValue;
    }
}
