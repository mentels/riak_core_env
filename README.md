riak_core_tutorial_env
=============

Environment for [riak_core_tutorial](https://github.com/mentels/riak_core_tutorial).

### Dependencies ###

The environment requires [VirtualBox](https://www.virtualbox.org/)
(tested with version 4.3.10) and [Vagrant](https://www.vagrantup.com/)
(tested with version 1.6.3) with the following plugins:
* [vagrant-omnibus](https://github.com/schisamo/vagrant-omnibus) that
  ensures the desired version of Chef is installed (tested with version
  1.4.1);
* [vagrant-librarian-chef](https://github.com/jimmycuadra/vagrant-librarian-chef)
  that install Chef cookbooks using Librarian-Chef (tested with version
  0.2.1).

To install the plugins follow the instructions below.

### Running ###

To install the environment run:

```bash
git clone https://github.com/mentels/riak_core_tutorial_env rct_env
cd rct_env
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-librarian-chef
vagrant up
```

> NOTE:
> * installing the plugins is required only once;
> * running `vagrant up` for the first time can take few minutes.

Then ssh into the virtual machine: `vagrant ssh`.

The code required for the tutorial sits in
`/home/vagrant/synced/riak_core_tutorial`. It can be edited from your
machine because the local `./synced` directory is synchronized with
`/home/vagrant/synced` in the VM.

When you finish you can stop the VM by running `vagrant halt` or event
destroy it with `vagrant destroy` (both from the host).

