export PATH="`pwd`/.pyenv/bin:$PATH"
export PYENV_ROOT="`pwd`/.pyenv"
eval "$(pyenv init -)"
pyenv shell project_env
