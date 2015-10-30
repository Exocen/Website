module VideosHelper
  #return videos
  def getLinkedVideo(video)
    $videolink = video.link
    li ='<iframe width="560" height="315" src=' + $videolink + ' allowfullscreen></iframe>'
    return li.html_safe
  end

end
