autocmd BufRead,BufNewFile *.tf.template set ft=terraform
autocmd BufRead,BufNewFile *.hcl setlocal filetype=terraform
autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,*.ru,*.rake,*.json.jbuilder,*.rb.no} set ft=ruby
autocmd BufRead,BufNewFile {.vim_config} set ft=vim
autocmd BufRead,BufNewFile {*.conf} set ft=c
autocmd BufRead,BufNewFile {*Dockerfile*} set ft=dockerfile
autocmd BufRead,BufNewFile {*Jenkinsfile*} set ft=jenkins
autocmd BufRead,BufNewFile {*.yaml.tpl} set ft=yaml
autocmd BufRead,BufNewFile {*.sh.tpl} set ft=sh
autocmd BufRead,BufNewFile {*.json.tpl} set ft=json
autocmd BufRead,BufNewFile {*.md} set ft=markdown
