# uwsgi
# 
# Meta state to install uwsgi server

include:
  - uwsgi.install
  {% if grains['os_family']=="Debian" %}
  - uwsgi.service
  - uwsgi.applications
  {% endif %} #END: os = debian


