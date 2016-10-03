defmodule Templater do

	def render(data, template) do
		EEx.eval_string template, assigns: data
	end

end
