module VideosHelper
  #return videos
  def getLinkedVideo(video)
    $videolink = video.link
    #https:\/\/www.youtube.com\/watch\?v=(.*)
    $videolinkParse = $videolink.match('https:\/\/www.youtube.com\/watch\?v=(.*)')
    li ='<iframe width="560" height="315" src="https://www.youtube.com/embed/' + $videolinkParse[1] + '" allowfullscreen></iframe>'
    return li.html_safe
  end

end
