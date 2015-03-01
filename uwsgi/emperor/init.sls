# uwsgi.emperor
#
# Meta-state to install uwsgi emperor

include:
  - uwsgi.emperor.config
  - uwsgi.emperor.install

extend:
  uwsgi_emperor_config:
    file:
      - require:
        - pkg: uwsgi_emperor_install
