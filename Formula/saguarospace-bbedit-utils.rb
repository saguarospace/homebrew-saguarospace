class SaguarospaceBbeditUtils < Formula
  desc "Saguaro Space BBEdit Utilities"
  homepage ""
  url "https://github.com/saguarospace/saguarospace-bbedit-utils/releases/download/v0.0.4/saguarospace-bbedit-utils.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  def install
    prefix.install Dir["Library"]
    opt_prefix.install_symlink Dir["Library/*"]
  end
  
  def caveats
    language_modules = "Library/Application Support/BBEdit/Language Modules"
    scripts = "Library/Application Support/BBEdit/Scripts"
    lilypond = "lilypond.plist"
    engrave = "Engrave with LilyPond"
    
    <<~EOS
    
    ⚠️  To use Saguaro Space BBEdit utils, run:
    
    mkdir -p "$HOME/#{language_modules}"
    mkdir -p "$HOME/#{scripts}"
    ln -sf "#{opt_prefix}/#{language_modules}/#{lilypond}" "$HOME/#{language_modules}/#{lilypond}"
    ln -sf "#{opt_prefix}/#{scripts}/#{engrave}" "$HOME/#{scripts}/#{engrave}"
    chmod +x "$HOME/#{scripts}/#{engrave}"
    
    EOS
  end
end
