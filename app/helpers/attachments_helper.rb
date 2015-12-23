module AttachmentsHelper

  def icon_for_extension(filename_extension)
    legend = {
      "pdf" => "file-pdf-o",
      "ods" => "file-excel-o",
      "txt" => "file-text",
      "ppt" => "file-powerpoint-o",
      "csv" => "file-excel-o"
    }
    "fa-#{legend[filename_extension]}"
  end
end
