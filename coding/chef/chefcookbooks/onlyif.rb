execute "test" do
  command "sh test.sh && touch /opt/myapp/done.log"
  only_if {File.exists?("/opt/myapp/done.log")}
end