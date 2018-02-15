# -*- coding: utf-8 -*-

from pathlib import Path
from invoke import task

BASE_DIR = Path(__file__).parent
PLUG_PATH = BASE_DIR / "autoload/plug.vim"
PLUG_URLS = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

@task
def install_plug(ctx):
    cmd = f'curl -fLo {PLUG_PATH} --create-dirs  {PLUG_URLS}'
    ctx.run(cmd)
