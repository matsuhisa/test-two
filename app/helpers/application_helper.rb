module ApplicationHelper

  # ���s��br�v�f�ɂ���
  def nl2br(str)
    str.gsub(/\r\n|\r|\n/, "<br>")
  end

end
