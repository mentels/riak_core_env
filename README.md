riak_core_env
=============

Environment for [riak_core_tutorial](https://github.com/mentels/riak_core_tutorial).

### Dependencies ###

The environment requires [VirtualBox](https://www.virtualbox.org/)
(tested with version 4.3.10) and [Vagrant](https://www.vagrantup.com/)
(testedwith version 1.6.3) with the following plugins:
* [vagrant-omnibus](https://github.com/schisamo/vagrant-omnibus) that
  ensures the desired version of Chef is installed (tested with version
  1.4.1);
* [vagrant-librarian-chef](https://github.com/jimmycuadra/vagrant-librarian-chef)
  that install Chef cookbooks using Librarian-Chef (tested with version
  0.2.1).

To install the plugins follow the instructions in the next chapter.

### Running ###

To run the environment for the riak_core_tutorial just run:

```bash
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-librarian-chef
vagrant up
```

> NOTE:
> * installing the plugins is required only once;
> * running `vagrant up` for the first time can take few minutes.

Then ssh into the virtual machine: `vagrant ssh`.

You can edit the tutorial's code from your machine as it's shared with
the VM via `synced/` directory.

When you finish you can stop the VM by running `vagrant halt` or event
destroy it with `vagrant destroy`. 

