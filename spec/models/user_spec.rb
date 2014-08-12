describe User do

  before(:each) {@user = User.new(email: 'user@example.com', password: 'changeme')}

  it "should respond to email" do
    expect(@user).to respond_to :email
  end

  it "#email returns a string" do
    expect(@user.email).to match "user@example.com"
  end

  it "should be invalid with a blank email" do
    @user.email = " "
    expect(@user).not_to be_valid
  end

  it "should be invalid with a blank password" do
    @user.password = " "
    expect(@user).not_to be_valid
  end

  it "should be invalid with a short password" do
    @user.password = "aa"
    expect(@user).not_to be_valid
  end

  it "should be invalid with a non-email" do
    @user.email = "this!not#email"
    expect(@user).not_to be_valid
  end

  it ".all returns a list of users" do
    @user.save
    expect(User.all.count).not_to eq 0
  end

end
