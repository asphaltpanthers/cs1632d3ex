defmodule HelloPhoenix.FactResController do
  use HelloPhoenix.Web, :controller
  
  def fact(n) do
		if (n < 0 || n > 100 || n == 1 || n == 0) do
			1
		else
			n * fact(n - 1)
		end
	end
	
	def show(conn, %{"value" => value}) do
		render conn, "show.html", value: value, res: fact(String.to_integer(value))
	end
end
