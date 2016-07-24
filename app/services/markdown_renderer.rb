class MarkdownRenderer < Redcarpet::Render::HTML
  def paragraph(text)
    if text =~ /NOTE:/
      text.gsub(/^(?:NOTE:)(.*?)(?:\n(?=\n)|\Z)/m) do
        %(<p class="article-note">#{Regexp.last_match[1].strip}</p>)
      end
    else
      "<p>#{text}</p>"
    end
  end
end
