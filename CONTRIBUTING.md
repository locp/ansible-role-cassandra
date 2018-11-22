# Contributing to ansible-role-cassandra

ansible-role-cassandra is developed using a standard Github pull request
process. Almost all code is reviewed in pull requests.

The general process for working on ansible-role-cassandra is:

- Fork the project on Github
- Clone your fork to your local machine
- Create a feature branch from `develop` (e.g.
  `git branch delete_all_the_code`)
- Write code, commit often
- Write test cases for all changed functionality
- Submit a pull request against `develop` on Github
- Wait for code review!

Things that will make your branch more likely to be pulled:

- Comprehensive, fast test cases
- Detailed explanation of what the change is and how it works
- Reference relevant issue numbers in the tracker
- API backward compatibility

If you add a new configuration option, please try to do all of these things:

- Make its name unambiguous in the context of multiple runners (e.g.
  `task_instance_type` instead of `instance_type`).
- Document the option in the README.md file.
