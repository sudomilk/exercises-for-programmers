defmodule Mix.Tasks.HelloWorld.Greet do
  use Mix.Task

  @shortdoc "Ask for your name and greet you"

  def run(["novar"]) do
    #Constraint: no variables allowed
    IO.puts "Hello, #{IO.gets("What is your name? ") |> String.trim_trailing}, nice to meet you!"
    :ok
  end

  def run(_) do
    #Constraint: Keep input, string concat, and output separate
    name = IO.gets("What is your name? ")
    |> String.trim_trailing
    reply = "Hello, #{name}, nice to meet you!"
    IO.puts reply
    :ok
  end
end
