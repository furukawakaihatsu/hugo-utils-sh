sudo apt update && sudo apt upgrade -y && \
    sudo apt install curl wget -y && \
    wget https://github.com/gohugoio/hugo/releases/download/v0.146.5/hugo_0.146.5_linux-amd64.tar.gz && \
    tar -zxvf hugo_0.146.5_linux-amd64.tar.gz && \
    ./hugo new site a && mv ./a/* ./ && \
    ./hugo new theme a && mv ./themes/a/layouts/* ./layouts/ && \
    rm -r a themes i18n data && \
    rm README.md LICENSE hugo_0.146.5_linux-amd64.tar.gz && \
    rm ./layouts/term.html ./layouts/taxonomy.html && \
    rm ./layouts/_partials/terms.html ./layouts/_partials/menu.html && \
    rm -r ./layouts/_partials/head && \
    rm ./hugo.toml && \
    echo "baseURL = ''
languageCode = 'ja'
title = ''
copyright = '©︎'
publish = 'public'
disableKinds = ["term","categories","tags"]
summary = 'summaryLength (20)'

[markup]
  [markup.goldmark]
    [markup.goldmark.renderer]
      unsafe = true

[outputs]
  home = ["HTML"]
  page = ["HTML"]
  section = ["HTML", "RSS"]

[outputFormats.RSS]
  mediaType = "application/rss+xml"
  baseName = "rss"
  isPlainText = true

[outputs.posts]
  section = ["HTML", "RSS"]

[permalinks]
  posts = '/posts/:slug/'
    
[taxonomies]

[params]
  description = ''
  favicon = 'favicon.ico'

  [params.google]
    siteVerification = ''

  [params.GoogleAnalytics]
    gtag = ''" > hugo.toml
