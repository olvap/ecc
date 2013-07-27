shared_examples_for "a redirect to teams" do
  it "redirects to #index" do
    response.should redirect_to teams_path
  end
end