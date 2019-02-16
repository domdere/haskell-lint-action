FROM irreverentpixelfeats/hlinter-action:sha-20190216120916-348b8d1

LABEL "com.github.actions.name"="Haskell Linter"
LABEL "com.github.actions.description"="Run hlint on your haskell code base"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="6f42c1"

CMD ["hlinter", "run"]
