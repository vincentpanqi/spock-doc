FROM yarnpkg/node-yarn:latest

# WORKDIR /spock-portal

RUN yarn global add docsify-cli

RUN docsify init ./docs

ADD spock-docs/ ./docs

RUN ls docs

RUN docsify serve ./docs -p 80


EXPOSE 80
