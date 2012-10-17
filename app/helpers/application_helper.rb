module ApplicationHelper

  # ‰üs‚ğbr—v‘f‚É‚·‚é
  def nl2br(str)
    str.gsub(/\r\n|\r|\n/, "<br>")
  end

end
