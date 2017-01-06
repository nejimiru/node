FROM debian:jessie
RUN apt-get update && \
    apt-get install bash-completion git curl -y && \
    curl -sL https://deb.nodesource.com/setup_7.x | bash - \
    && apt-get install -y nodejs && \
    mkdir ~/.bash && cd ~/.bash && \
    git clone git://github.com/jimeh/git-aware-prompt.git
ADD bashrc /root/.bashrc

CMD [ "bash" ]