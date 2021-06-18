# flutter_avalant_test

Full stack Exam

Platform support: Android, IOS, Web

### 1.Please write a function to convert List to Tree structure?

  #### Unit Testing
  
  run command: flutter test test/convert_list_test.dart
  
### 2. Have a prototype for Home page and code main.dart, but code in main.dart it is not completed yet. Please make this app work correctly.

  #### Unit Testing
  
  run command: flutter test test/custom_tab_controller_test.dart
  
  #### Integrated testing
  
  run command: flutter devices
  
  command:
  sdk gphone arm64 (mobile)  • <DEVICE_ID>                        • android-arm64  • Android 11 (API 30) (emulator)
  
  iPhone 12 Pro Max (mobile) • <DEVICE_ID> • ios            • com.apple.CoreSimulator.SimRuntime.iOS-14-5 (simulator)
  
  
  run command: flutter_avalant_test % flutter drive \                                 
  --driver=test_driver/integration_test.dart \
  --target=integration_test/app_test.dart \
  -d <DEVICE_ID>
