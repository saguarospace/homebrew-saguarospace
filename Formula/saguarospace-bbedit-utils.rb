class SaguarospaceBbeditUtils < Formula
  desc "Saguaro Space BBEdit Utilities"
  homepage ""
  url "https://github.com/saguarospace/saguarospace-bbedit-utils/releases/download/v0.0.2/saguarospace-bbedit-utils.tar.gz"
  sha256 "6bc0bab152a4faec0b2a9718b7b652b3addfa3c5e0aa4cd0b96d7acbff0fd07b"
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
    cp "#{opt_prefix}/#{scripts}/#{engrave}" "$HOME/#{scripts}/#{engrave}"
    chmod +x "$HOME/#{scripts}/#{engrave}"
    
    EOS
  end
end
