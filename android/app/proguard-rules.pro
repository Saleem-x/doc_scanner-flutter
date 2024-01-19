# Add your custom package name
-keep class com.example.doc_scanner.** { *; }

# Keep entry points
-keep class com.example.doc_scanner.MainActivity { *; }

# Keep Application class
-keep class com.example.doc_scanner.MyApplication { *; }

# Keep Android components
-keep class * extends android.app.Activity { *; }
-keep class * extends android.app.Application { *; }
-keep class * extends android.app.Service { *; }
-keep class * extends android.content.BroadcastReceiver { *; }
-keep class * extends android.content.ContentProvider { *; }

# Keep support library
-keep class android.support.** { *; }
-keep interface android.support.** { *; }

# Keep design library
-keep class com.google.android.material.** { *; }
-keep interface com.google.android.material.** { *; }

# Keep Google Play Services
-keep class com.google.android.gms.** { *; }
-keep interface com.google.android.gms.** { *; }

# Keep Gson
-keep class com.google.gson.** { *; }

# Keep OkHttp
-keep class okhttp3.** { *; }

# Keep Retrofit
-keep class retrofit2.** { *; }

# Keep RxJava
-keep class io.reactivex.** { *; }

# Keep Glide
-keep class com.bumptech.glide.** { *; }

# Keep Firebase
-keep class com.google.firebase.** { *; }
