import os
from install.utils import *
from install.arch import *

pacman('sxhkd')
pacman('bspwm')

base = os.path.join(os.path.dirname(os.path.realpath(__file__)), "home")
symlink_home(base, '.config/bspwm')
symlink_home(base, '.config/sxhkd',)
