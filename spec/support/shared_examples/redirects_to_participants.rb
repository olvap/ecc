shared_examples_for "a redirect to participants" do
  it "redirects to #index" do
    response.should redirect_to participants_path
  end
end