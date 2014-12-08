irequire 'serverspec'
set :backend, :exec

describe "haproxy" do
  it "haproxy is running" do
    expect(process('haproxy')).to be_running
  end

  it "haproxy responds on port 8080" do
    expect(port 8080).to be_listening 'tcp'
  end

  it "haproxy displays draughts home page on port 8080" do
    expect(command("curl http://localhost:8080").stdout).to match /Welcome to the/
  end
end

