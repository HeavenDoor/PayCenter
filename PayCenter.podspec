Pod::Spec.new do |s|
  s.name         = "PayCenter"
  s.version      = “1.0.0”
  s.summary      = "iOS aliPay wechatPay PayCenter"
  s.homepage     = "https://github.com/HeavenDoor/PayCenter"
  s.license      = "MIT"
  s.author       = {"shenghai" => "shenghairen@gmail.com" }
  s.ios.deployment_target='7.0'
  s.source       = { :git => "https://github.com/HeavenDoor/PayCenter.git", :tag => s.version }
  #s.source_files = "PodSpec/HelloPodSpec.{h,m}"
  s.source_files = 'PayCenter/*' 
  s.requires_arc = true
end