package com.example.doc_scanner
import android.content.Intent
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
import io.flutter.embedding.engine.FlutterEngine
import android.content.Context
import android.app.Activity

class MainActivity : FlutterActivity() {

  private val CHANNEL = "com.example.doc_scanner/response"

  override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
    GeneratedPluginRegistrant.registerWith(flutterEngine)
    MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
      if (call.method == "sendResponse") {
        val response = call.arguments as String
        // Handle the response as needed
        // You can also start your activity with this response
//        val intent = Intent()
//        intent.putExtra("response", response)


//        val intent = Intent().apply {
//          putExtra(Intent.EXTRA_TEXT, "response")
//          type = "text/plain"
//        }

        val intent = Intent()
          .putExtra("response", response)
          .putExtra(Intent.EXTRA_TEXT, "response")
          .setType("text/plain")

        setResult(Activity.RESULT_OK, intent)
        finish()
      } else {
        result.notImplemented()
      }
    }
  }
}
