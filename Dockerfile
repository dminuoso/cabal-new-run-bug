FROM haskell:8.4

USER root
ADD . /app
WORKDIR /app

RUN cabal new-update
RUN cabal new-build .
RUN cabal new-run cabal-plan
RUN cabal new-run cabal-plan
