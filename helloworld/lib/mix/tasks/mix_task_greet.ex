defmodule Mix.Tasks.HelloWorld.Greet do
  use Mix.Task

  @shortdoc "Ask for your name and greet you"

  def run(_) do
    name = IO.gets("What is your name? ")
    |> String.trim_trailing
    IO.puts "Hello, #{name}, nice to meet you!"
    :ok
  end
end
