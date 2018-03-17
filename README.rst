======
uwsgi
======

Set up and configure the uwsgi server framework.
This module is based on the excellent work done in the nginx-formula by the
contributors.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``uwsgi``
---------

Metastate to Install uwsgi from the system package manager. Note, the uwsgi version
available varies by platform.

**Note:** uwsgi requires the merge parameter of salt.modules.pillar.get(),
first available in the Helium release.

Example usage::

    include:
      - uwsgi

``uwsgi.install``
-----------------

Installs the uwsgi package

``uwsgi.service``
-----------------

Manages the uwsgi service on Debian systems

.. note::

    Archlinux uwsgi service isn't working because of the systemd changes.

    Archlinux uses uwsgi@<application>.service
    Pull Requests on this are greatly appreciated.

``uwsgi.applications``
----------------------

Manages the uwsgi applications files and binds them to the service calls

``uwsgi.application_config``
----------------------------

Manages the application files for the uwsgi server. This state only manages the
content of the files and does not bind them to the service calls.

``uwsgi.pip``
-------------

Install uwsgi via pip.

``uwsgi.plugins``
-----------------

Install uwsgi plugins via default package management system.
plugins can be specified via pillar lookup function.

``uwsgi.emperor``
-----------------

Meta state to install and confgure uwsgi emperor via default package management system.

Example usage::

    include:
      - uwsgi.emperor

``uwsgi.emperor.config``
------------------------

Manages the uwsgi emperor config file, all variables can be set by pillar.

``uwsgi.emperor.install``
-------------------------

Manages the installation of uwsgi package.

``uwsgi.emperor.service``
-------------------------

Manages the startup and running state of the uwsgi emperor service.

``uwsgi.emperor.vassal_config``
-------------------------------

Manages the vassal files for the uwsgi emperor process. This state only manages
the content of the files and does not bind them to the service calls.

``uwsgi.emperor.vassals``
-------------------------

Manages the uwsgi emperor vassals ini files and binds them to the service
calls.



Running Tests
=============

This test runner was implemented using the formula-test-harness_ project.

Tests will be run on the following base images:

* ``simplyadrian/allsalt:centos_master_2017.7.2``
* ``simplyadrian/allsalt:debian_master_2017.7.2``
* ``simplyadrian/allsalt:opensuse_master_2017.7.2``
* ``simplyadrian/allsalt:ubuntu_master_2016.11.3``
* ``simplyadrian/allsalt:ubuntu_master_2017.7.2``

Local Setup
-----------

.. code-block:: shell

   pip install -U virtualenv
   virtualenv .venv
   source .venv/bin/activate
   make setup

Run tests
---------

* ``make test-centos_master_2017.7.2``
* ``make test-debian_master_2017.7.2``
* ``make test-opensuse_master_2017.7.2``
* ``make test-ubuntu_master_2016.11.3``
* ``make test-ubuntu_master_2017.7.2``

Run Containers
--------------

* ``make local-centos_master_2017.7.2``
* ``make local-debian_master_2017.7.2``
* ``make local-opensuse_master_2017.7.2``
* ``make local-ubuntu_master_2016.11.3``
* ``make local-ubuntu_master_2017.7.2``


.. _formula-test-harness: https://github.com/intuitivetechnologygroup/formula-test-harness
