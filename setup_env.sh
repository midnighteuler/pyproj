git clone git://github.com/yyuu/pyenv.git .pyenv
git clone git://github.com/yyuu/pyenv-virtualenv.git ./.pyenv/plugins/pyenv-virtualenv
export PYENV_ROOT="`pwd`/.pyenv"
export PATH="`pwd`/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
pyenv install 2.7.5
pyenv global 2.7.5
pyenv rehash
pyenv virtualenv 2.7.5 project_env
pyenv shell project_env
cat requirements.txt | xargs pip install
