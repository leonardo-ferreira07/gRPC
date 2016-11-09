Pod::Spec.new do |spec|
  spec.name         = 'B2Beauty-ProtoRPC'
  spec.version      = '0.0.15'
  spec.license      = { type: 'BSD' }
  spec.homepage     = 'http://www.beautydate.com'
  spec.authors      = { 'Leonardo Saraiva' => 'leonardo.saraiva@beautydate.com', 'Leonardo Ferreira' => 'leonardo.ferreira@beautydate.com' }
  spec.summary      = 'B2Beauty-ProtoRPC'
  spec.source       = { git: 'https://github.com/b2beauty/beautyapis.git' }
  spec.ios.deployment_target = "8.1"
  #spec.source_files = "b2beauty/**/*.pbobjc.{h,m}", "b2beauty/**/*.pbrpc.{h,m}"
  # spec.framework    = 'SystemConfiguration'
  #spec.requires_arc  = false
  
  spec.subspec "Messages" do |ms|
     ms.source_files = "b2beauty/**/*.pbobjc.{h,m}"
     ms.requires_arc = false
   end

  spec.subspec "Services" do |ss|
     ss.source_files = "b2beauty/**/*.pbrpc.{h,m}"
     ss.requires_arc = true
   end


end
