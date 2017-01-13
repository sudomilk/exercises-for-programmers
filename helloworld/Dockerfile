FROM elixir:latest

WORKDIR /helloworld
COPY lib/ ./lib/
COPY config/ ./config/
COPY test/ ./test/
COPY mix.exs ./
RUN ["mix", "compile"]
CMD ["iex", "-S", "mix"]
