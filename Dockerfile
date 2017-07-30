FROM gimc/phoenix:1.2.5

MAINTAINER Gordon McAllister <gordonmc8@gmail.com>

ENV MIX_ENV=prod
ENV PORT=4000

COPY . /

RUN mix deps.get
RUN mix deps.compile
RUN mix compile
RUN brunch build --production
RUN mix phoenix.digest
