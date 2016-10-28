defmodule RewriterTest do
  use ExUnit.Case
  doctest Rewriter

  test "I can identify links in a template string and insert a tracker address" do
  	templateSample = ~s(href="https://a.co/test.ext?a=1&b")
  	replacementSample = ~s(href="https://tracker_address)

    assert Rewriter.link_rewrite(templateSample, replacementSample) == ~s(href="https://tracker_address"https://a.co/test.ext?a=1&b")
  end
end
