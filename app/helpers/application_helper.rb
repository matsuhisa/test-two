module ApplicationHelper

  # 改行をbr要素にする
  def nl2br(str)
    str.gsub(/\r\n|\r|\n/, "<br>")
  end

end
