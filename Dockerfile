FROM irreverentpixelfeats/hlinter-action:sha-20190223141625-c1e1aec

LABEL "com.github.actions.name"="Haskell Linter"
LABEL "com.github.actions.description"="Run hlint on your haskell code base"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="6f42c1"

CMD ["hlinter", "run"]
