def bubble_sort(content)
	loop=true
	until (loop==false) do
		loop=false
		for i in 0..content.length-2
			if (content[i]<=>content[i+1])==1
				content[i],content[i+1]=content[i+1],content[i]
				loop=true
			end
		end
	end
	return content
end

def bubble_sort_by(content)
	loop=true
	until (loop==false) do
		loop=false
		for i in 0..content.length-2
			check = yield(content[i],content[i+1])
			if check==1
				content[i],content[i+1]=content[i+1],content[i]
				loop=true
			elsif (check != 0) && (check != -1)
				return "False parameters in block. Please use a spaceship operator on two items"
			end
		end
	end
	return content
end