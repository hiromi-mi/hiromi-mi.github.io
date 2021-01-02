polyglot-ruby-bash-quine:
	ruby polyglot-ruby-bash-quine.bash.rb > 1.rb
	bash -i polyglot-ruby-bash-quine.bash.rb > 2.rb
	diff3 polyglot-ruby-bash-quine.bash.rb 1.rb 2.rb # no diff
	ruby 1.rb > 3.rb
	bash -i 2.rb > 4.rb
	diff3 polyglot-ruby-bash-quine.bash.rb 3.rb 4.rb # no diff
	rev polyglot-ruby-bash-quine.bash.rb|tac > 7.rb
	diff polyglot-ruby-bash-quine.bash.rb 7.rb
