#if defined?(WillPaginate)
#module WillPaginate
#	module ActiveRecord
#		module RelationMethods
#			alias_method :per, :per_page
#			alias_method :num_pages, :total_pages
#		end
#	end
#end
#end

WillPaginate::ViewHelpers.pagination_options[ :class ] =  "pagination"
WillPaginate::ViewHelpers.pagination_options[:previous_label ] =  "<<上一页"   
WillPaginate::ViewHelpers.pagination_options[:next_label ] =  "下一页>>"  

