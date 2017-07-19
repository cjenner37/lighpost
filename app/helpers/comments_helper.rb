module CommentsHelper
	def recursive_comments(comments)
		comments.map do |comment, sub_comments|
			render(comment) + content_tag(:div, recursive_comments(sub_comments), :class => "recursive_comments")
		end.join.html_safe
	end
end
