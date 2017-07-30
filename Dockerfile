FROM elixir:1.4

MAINTAINER Gordon McAllister <gordonmc8@gmail.com>

ENV MIX_ENV=prod
ENV PORT=4000

RUN mix local.hex --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
RUN mix local.rebar --force

COPY . /

RUN mix deps.get
RUN mix deps.compile
RUN mix compile
