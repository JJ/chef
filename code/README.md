# Código de ejemplo

Si se tiene Virtual Box (edición OSE) hacer

	vagrant up

en este directorio. A continuación se puede provisionar con Chef o como sea.

Para instalar git, es imprescindible hacer

    chef-run -i .vagrant/machines/default/virtualbox/private_key vagrant@127.0.0.1:2222 git.rb

A continuación, instalar cualquier otra cosa que use el recurso git:

    chef-run -i .vagrant/machines/default/virtualbox/private_key vagrant@127.0.0.1:2222 git.rb
