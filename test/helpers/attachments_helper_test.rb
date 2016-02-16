require "test_helper"

describe AttachmentsHelper do

  specify ":icon_for_extension(extension)" do

    icon_for_extension("pdf").must_equal "fa-file-pdf-o"
  end
end