# README

This is to recreate the problem noted in the PR https://github.com/activeadmin/activeadmin/issues/5316#issuecomment-398425770 

Pretty much, stating up the app would throw a method already defined method warning:

```
$ RACK_ENV=production RAILS_ENV=production bx rails c
Warning: method `restore_resource` already defined
Loading production environment (Rails 5.2.0)
irb(main):001:0> exit
```

## To Recreate

Pull down, and run:

RACK_ENV=production RAILS_ENV=production bx rails c

Note: https://github.com/MikeRogers0/ActiveAdminDefinedMethodDemo/commit/20916a6cd1e4adebb2250e351f989f3428d047d0 - is what I done to fix this issue.

## Things I've noticed while debugging

- I the error disappeared when I deleted the engine in `config/routes.rb`
