require "roda"


class Myapp < Roda
  plugin :static, ["/images", "/css", "/js"]
  plugin :render
  plugin :head
  route do |r|
    r.root do
      view("homepage")
    end

  r.get "done" do
      view("done")
    end

    r.get "could_do" do
      view("could_do")
    end
  end
end
