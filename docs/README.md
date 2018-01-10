## Spock Doc

### Install

```bash
yarn global add  docsify-cli
```

or

```bash
npm i docsify-cli -g
```

### Live preview your site

```bash
docsify serve docs
```

### Build image

```bash
docker build --rm=true --no-cache -t index.qiniu.com/spocktest/spock-doc:your-tag .
```

### Push

```bash
docker push index.qiniu.com/spocktest/spock-doc:your-tag
```
