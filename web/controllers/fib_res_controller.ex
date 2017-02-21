defmodule HelloPhoenix.FibResController do
  use HelloPhoenix.Web, :controller
  
  def fib(n) do
		if (n < 0 || n > 30 || n == 1 || n == 0) do
			1
		else
			m1 = n - 1
			m2 = n - 2
			fib(m1) + fib(m2)
		end
	end
	
	
	
	def show(conn, %{"value" => value}) do	
		render conn, "show.html", value: value, res: fib(String.to_integer(value))
	end
end
