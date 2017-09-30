FROM yarnpkg/node-yarn:latest


RUN yarn global add docsify-cli

RUN docsify init ./docs

ADD docs/ ./docs

RUN docsify serve ./docs -p 80


EXPOSE 80
