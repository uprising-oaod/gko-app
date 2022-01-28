# frozen_string_literal: true

# Модуль работы с файлами
module Files
  # Отобразить содержимое файла логов
  class Show
    attr_accessor :file_name, :lines_count

    def initialize(file_name, lines_count = 3000)
      @file_name = file_name
      @lines_count = lines_count
    end

    def call
      res = []
      return nil unless File.file?("log/#{@file_name}.log")

      log_lines_count = `wc -l "log/#{@file_name}.log"`.strip.split[0].to_i
      File.foreach("log/#{@file_name}.log").with_index do |line, index|
        next if index < log_lines_count - @lines_count

        res << "#{index}. #{line}"
      end
      @file_body = res.reverse!
    end
  end
end
