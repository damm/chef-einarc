name             'einarc'
maintainer       'Scott M. Likens'
maintainer_email 'scott@likens.us'
license          'Apache 2.0'
description      'Installs/Configures einarc'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe "einarc::install", "Installs einarc"
supports 'ubuntu', "= 12.04"
depends "build-essential"
depends "git"
