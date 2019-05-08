require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end


  test "should not save post without required fields" do
    article = Article.new
    assert_not article.save
  end
end
