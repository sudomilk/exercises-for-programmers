defmodule Mix.Tasks.HelloWorld.Greet do
  use Mix.Task

  @shortdoc "Ask for your name and greet you"

  def run(["--special"]) do
    #Constraint: different greetings for different people
    name = IO.gets("What is your name? ") |> String.trim_trailing
    reply = case name_rem(name) do
      {0, _, _} -> {"Howdy, ", ", nice to meetcha'!"}
      {_, 0, _} -> {"Aloha, ", ", nice to meet you!"}
      {_, _, 0} -> {"안녕 ", ". 만나서 반갑습니다."}
      _ -> {"Hello, ", ", nice to meet you!"}
    end
    IO.puts elem(reply, 0) <> name <> elem(reply, 1)
    :ok
  end

  def run(["--novar"]) do
    #Constraint: no variables allowed
    "Hello, "
    <> "#{IO.gets("What is your name? ") |> String.trim_trailing}"
    <> ", nice to meet you!"
    |> IO.puts
    :ok
  end

  def run(_) do
    #Constraint: keep input, string concat, and output separate
    name = IO.gets("What is your name? ") |> String.trim_trailing
    reply = "Hello, " <> name <> ", nice to meet you!"
    IO.puts reply
    :ok
  end

  defp name_rem(name) do
    #give it a string, it will return a tuple of three items based on name length
    [2, 3, 5]
    |> Enum.map(fn(x) -> rem(String.length(name), x) end)
    |> List.to_tuple
  end
end
