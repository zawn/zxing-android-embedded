# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in D:\Android\android-sdk-windows/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
# Preserve all annotations.
-keepattributes Exceptions,InnerClasses,Signature,Deprecated,SourceFile,LineNumberTable,*Annotation*,EnclosingMethod,MethodParameters

-keep public class com.journeyapps.barcodescanner.CompoundBarcodeView {*;}
-keep public interface com.journeyapps.barcodescanner.CompoundBarcodeView$TorchListener {*;}
-keep public class com.journeyapps.barcodescanner.BarcodeResult {*;}
-keep public class com.journeyapps.barcodescanner.BarcodeCallback {*;}
-keep public class com.journeyapps.barcodescanner.CaptureManager {*;}
-keep public class com.google.zxing.integration.android.IntentIntegrator {*;}
-keep public class com.google.zxing.integration.android.IntentResult {*;}
-keep public class com.journeyapps.barcodescanner.ViewfinderView {*;}

# keep setters in Views so that animations can still work.
# see http://proguard.sourceforge.net/manual/examples.html#beans
-keep public class * extends android.view.View {
   *;
}
-keep class **.R$* {
    *;
}
# don't process support library
-keep class android.support.v7.** { *; }
-keep interface android.support.v7.** { *; }
