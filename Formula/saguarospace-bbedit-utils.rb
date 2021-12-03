class SaguarospaceBbeditUtils < Formula
  desc "Saguaro Space BBEdit Utilities"
  homepage ""
  url "https://github.com/saguarospace/saguarospace-bbedit-utils/releases/download/v0.0.3/saguarospace-bbedit-utils.tar.gz"
  sha256 "7fdc0b6f33deec1a036b440560a0d01ce5f332a09d3726b4070b7c3da4dfa436"
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
