module ActiveRecord::ConnectionAdapters
	class PostgreSQLAdapter < AbstractAdapter
		def quote(value, column = nil); 	value.kind_of?(NilClass) ? "default" : super;	end
	end
end

