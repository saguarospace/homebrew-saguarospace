class SaguarospaceBbeditUtils < Formula
  desc "Saguaro Space BBEdit Utilities"
  homepage ""
  url "https://github.com/saguarospace/saguarospace-bbedit-utils/releases/download/v0.0.4/saguarospace-bbedit-utils.tar.gz"
  sha256 "1eb80ebd812352d8ea12435924bef4e19e54f18ee0f8b6e67315b36ee398bee8"
  license "MIT"

  def install
    prefix.install Dir["Application Support"]
    opt_prefix.install_symlink Dir["Application Support/*"]
  end
  
  def caveats
    
    language_modules = "Application Support/BBEdit/Language Modules"
    scripts = "Application Support/BBEdit/Scripts"
    lilypond = "lilypond.plist"
    hcl = "hcl.plist"
    engrave = "Engrave with LilyPond"
    
    <<~EOS
    
    ⚠️  To use Saguaro Space BBEdit utils, run:
    
    mkdir -p "$HOME/#{language_modules}"
    mkdir -p "$HOME/#{scripts}"
    ln -sf "#{opt_prefix}/#{language_modules}/#{lilypond}" "$HOME/Library/#{language_modules}/#{lilypond}"
    ln -sf "#{opt_prefix}/#{language_modules}/#{hcl}" "$HOME/Library/#{language_modules}/#{hcl}"
    ln -sf "#{opt_prefix}/#{scripts}/#{engrave}" "$HOME/Library/#{scripts}/#{engrave}"
    chmod +x "$HOME/Library/#{scripts}/#{engrave}"
    
    EOS
  end
end
