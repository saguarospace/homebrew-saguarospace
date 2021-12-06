class SaguarospaceBbeditUtils < Formula
  desc "Saguaro Space BBEdit Utilities"
  homepage ""
  url "https://github.com/saguarospace/saguarospace-bbedit-utils/releases/download/v0.0.4/saguarospace-bbedit-utils.tar.gz"
  sha256 "09e507936905a6cf9d00d98b2468620d796955a2a62d796d2b779e4029119844"
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
