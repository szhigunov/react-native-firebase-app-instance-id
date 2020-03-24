package com.rnfirebaseappinstanceid;

import androidx.annotation.NonNull;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Promise;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.analytics.FirebaseAnalytics;

public class FirebaseAppInstanceIdModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public FirebaseAppInstanceIdModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "FirebaseAppInstanceId";
  }


  @ReactMethod
  public void getId(
    final Promise promise) {
    try {
      ;
      FirebaseAnalytics.getInstance(getReactApplicationContext()).getAppInstanceId().addOnCompleteListener(new OnCompleteListener<String>() {
        @Override
        public void onComplete(@NonNull Task<String> task) {
          if (task.isSuccessful()) {
            String user_pseudo_id = task.getResult();
            promise.resolve(user_pseudo_id);
          } else {
            promise.reject(new Error("Failed to get AppInstanceId"));
          }
        }
      });
    } catch (Exception e) {
      promise.reject(e);
    }
  }
}
