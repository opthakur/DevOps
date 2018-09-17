execute "test" do
  command "apt-get update && touch /tmp/updatedone"
  only_if {File.exists?("/tmp/updatedone")}
end
