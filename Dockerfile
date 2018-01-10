FROM yarnpkg/node-yarn:latest


RUN yarn global add docsify-cli

RUN docsify init ./docs

ADD docs/ ./docs

ADD init.sh /

CMD ["sh", "init.sh"]

EXPOSE 80
