defmodule Rewriter do

	def link_rewrite(template, replacement) do
		Regex.replace(~r/href="/, template, replacement)
	end	

end