require 'fileutils'

def update_file(path)
  source = File.dirname(__FILE__)
  destination = File.join(Dir.home, '.vim', 'bundle', 'vimrc')

  src = File.join(source, path)
  dst = File.join(destination, path)

  FileUtils.remove_entry_secure dst if File.exist? dst
  FileUtils.copy src, dst if File.exist? src
end

guard :shell do
  watch 'plugins.vim' do |m|
    update_file m[0]
    `vim -c VundleUpdate -c quitall 2>/dev/null`
  end

  watch %r{^plugin/(.+)\.vim} do |m|
    update_file m[0]
  end
end
