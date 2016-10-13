defmodule Templater do

	def render(template, data) do
		EEx.eval_string template, assigns: data
	end

end