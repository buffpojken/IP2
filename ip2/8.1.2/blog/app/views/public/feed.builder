xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "bongo"
    xml.description "My Fantastic Blog"
    xml.link publics_url(@post.title)
    xml.item do
      xml.title @post.title
      xml.description transform(@post.body || "")
      xml.pubDate @post.created_at.to_s(:rfc822)
      xml.link publics_url(@post.title)
    end
  end
end