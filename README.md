ansible
=======

Use sudo and be verbose:

    ansible-playbook -i hosts  -vvvvv  -K site.yml

Dry run using ssh:

    ansible-playbook -i hosts -k -C pfc-bootstrap.yml


On remote host:

    sudo ansible-playbook -i hosts  remote.yml

TODO
----

- "@Development Tools", "@Perl Support", "@C Development Tools and Libraries"
