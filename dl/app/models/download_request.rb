class DownloadRequest < ApplicationRecord

    include Backburner::Performable


    DOWNLOAD_PATH_ROOT = "/mnt/d/dl"

    before_save :set_download_path, if: :path.blank?

    after_commit :schedule_download

    def schedule_download
        async.start_download
    end

    def start_download
        system("mkdir", "-p", self.path)
# puts "yt-dlp -P #{self.path} #{self.url}"
        # system("yt-dlp -P #{self.path} #{self.url}")
        system("yt-dlp",  "-P", "#{self.path}", "#{self.url}")
    end

    def set_download_path
        self.path = DOWNLOAD_PATH_ROOT + "/" +  SecureRandom.uuid

        puts "yt-dlp -P #{self.path} #{self.url}"
    end
end
