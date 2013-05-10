name             'einarc'
maintainer       'Scott M. Likens'
maintainer_email 'scott@likens.us'
license          'Apache 2.0'
description      'Installs/Configures einarc'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

recipe "einarc::install", "Installs einarc"
supports 'ubuntu'
depends "build-essential"
depends "git"
