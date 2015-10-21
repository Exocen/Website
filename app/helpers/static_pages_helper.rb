module StaticPagesHelper

	#test image
	def getCarouselExampleGeneric(slideNumber)
		li = ''
		$i = 0
		while $i < slideNumber do
			li +='<li data-target="#carousel-example-generic"
			data-slide-to="'+$i.to_s+'" class=""></li>'
			$i += 1;
		end
		return li.html_safe
	end

	#return videos
	def getLinkedVideo(video)
		$videolink = video.link
		li ='<iframe width="560" height="315" src=' + $videolink + ' allowfullscreen></iframe>'
		return li.html_safe
	end

end
