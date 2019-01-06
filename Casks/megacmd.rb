cask 'megacmd' do
  version '1.0.0'
  sha256 '98bba25117b33cdb1e71f0af3e4af72c88ff775fc22142f28de5d3503cf6442c'

  url 'https://mega.nz/MEGAcmdSetup.dmg'
  appcast 'https://github.com/meganz/MEGAcmd/releases.atom'
  name 'MEGAcmd'
  homepage 'https://mega.nz/cmd'

  app 'MEGAcmd.app'
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/MEGAcmdShell", target: 'megacmd'

  zap trash: '~/.megaCmd'

  caveats do
    path_environment_variable "#{appdir}/MEGAcmd.app/Contents/MacOS"
  end
end
