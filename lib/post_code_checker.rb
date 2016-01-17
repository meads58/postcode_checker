class PostCodeChecker

  def trim string_to_trim
    no_spaces = string_to_trim.strip
    no_spaces.delete(' ')
  end

  def post_code_area post_code
    post_area = post_code.split(/(\d)/)
    if post_area[0]
  end


end