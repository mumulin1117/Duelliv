# Uncomment the next line to define a global platform for your project
 #platform :ios, '15.6'

target 'Duelliobuaf' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  # Pods for Duelliobuaf
  pod 'SnapKit'
  pod "SwiftyStoreKit"
  pod 'Alamofire'
  pod "IQKeyboardManager"
  pod "Loaf"
  pod 'LLCycleScrollView'
  pod 'TagListView'
  pod 'Alamofire'
 
end
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
    end
  end
end

