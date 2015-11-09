Pod::Spec.new do |s|
  s.name         = "FFmpeg"
  s.version      = "2.8"
  s.summary      = "FFmpeg static libraries compiled for iOS"
  s.homepage     = "https://github.com/siuying/ffmpeg-tvos-precompiled"
  
  s.license      = { :type => 'LGPLv2.1+', :file => 'COPYING.LGPLv2.1' }
  s.author       = { "Francis Chong" => "francis@ignition.hk" }
  s.requires_arc = false
  
  s.platform     = :tvos

  s.source       = { :git => "https://github.com/siuying/ffmpeg-tvos-precompiled.git", :tag => "2.8", :submodules => true }

  s.default_subspec = 'precompiled'

  s.subspec 'precompiled' do |ss|
    ss.source_files        = 'include/**/*.h'
    ss.public_header_files = 'include/**/*.h'
    ss.header_mappings_dir = 'include'
    ss.vendored_libraries  = 'lib/*.a'
    ss.libraries = 'avcodec', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'iconv', 'z', 'bz2'
  end
end