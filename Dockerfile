FROM irreverentpixelfeats/ci-haskell:ubuntu_xenial-8.6.2_2.0-20190202063139-7da4b1c

LABEL "com.github.actions.name"="Haskell Linter"
LABEL "com.github.actions.description"="Run hlint on your haskell code base"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="6f42c1"

RUN mkdir -p ~/happy \
  && cd ~/happy \
  && cabal update \
  && cabal sandbox init \
  && cabal install happy-1.19.9 \
  && ln -sf ~/happy/.cabal-sandbox/bin/happy /bin/happy

RUN mkdir -p ~/hlint \
  && cd ~/hlint \
  && cabal sandbox init \
  && cabal install hlint-2.1.14

CMD ["~/hlint/.cabal-sandbox/bin/hlint", "/github/workspace"]
