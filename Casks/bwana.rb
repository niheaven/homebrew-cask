cask 'bwana' do
  version '2.8'
  sha256 'c080fdda304dcd4f30758530dd39b01f48bdf34b6914dab770271a01e86b9223'

  url 'https://www.bruji.com/bwana/bwana.dmg'
  appcast 'https://www.bruji.com/bwana/new.html'
  name 'Bwana'
  homepage 'https://www.bruji.com/bwana/'

  app 'Bwana.app'

  zap trash: [
               '~/Library/Caches/Bwana',
               '~/Library/Preferences/com.bruji.bwana.plist',
             ]
end
