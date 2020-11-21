# SEMC Quantum Repos
------------------------------------
Quantum uses Lua for buildfiles, this is where the buildfiles are hosted.
Learn about the Quantum [here](https://github.com/quantum-package-manager/quantum-lua)

------------------------------------
## Tutorial
First you need to clone the repo:<br>
`git clone https://github.com/semissioncontrol/repos.git`<br>
Then you need to change into the repository directory:<br>
`cd repo/repo`<br>
Then make a directory for the package:<br>
`mkdir repo/repo/foo`<br>
Then change into that:<br>
`cd foo`<br>
Then, in your packages directory, make a new file called `quantum.lua`<br>
Now, we define the package:<br>
For a package downloaded from git,<br>
```lua
package = {
  name = "foo",
  version = "source",
  source = "https://foo.bar/foo.git",
  git = true
}
```

For a package downloaded as a tarball,<br>
```lua
package = {
  name = "foo",
  version = "1.2",
  source = "https://foo.bar/foo-1.2.tar.gz",
  git = false
}
```
And for dependencies:
```lua
dependencies = {
	"[pkg]",
	"[pkg2]"
}
```

Now we define the build steps:<br>
```lua
function build()
	make()
end
```
And now the install:<br>
```lua
function install()
  quantum_install("foobar")
end
```

Note: `quantum_install` moves a file to the final directory<br>
Note: To run a shell command use `os.execute("[command]")`<br>
