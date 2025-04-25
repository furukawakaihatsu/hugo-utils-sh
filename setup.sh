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
    rm -r ./layouts/_partials/head
