# dotfiles
How I get my own mac configured, hassle free.

How I got this done? By reading the most awesome dotfiles post ever:
[Setting Up a Mac Dev Machine From Zero to Hero With Dotfiles](https://code.tutsplus.com/tutorials/setting-up-a-mac-dev-machine-from-zero-to-hero-with-dotfiles--net-35449)

Want to create a new config for your `.macos` and have no idea what the key is? [Check this out](https://github.com/mathiasbynens/dotfiles/issues/5#issuecomment-4117712)

# Many thanks to
the following guys whose I copied 99.9% of this repo content/ideas:
- <https://github.com/mathiasbynens/dotfiles>
- <https://github.com/paulirish/dotfiles>
- <https://github.com/geerlingguy/dotfiles>
- <http://dotfiles.github.io/>

I also make use of: [posh-git-sh](https://github.com/lyze/posh-git-sh)

# Instructions
First of all I will borrow the warning from [mathiasbynens dotfiles repo](https://github.com/mathiasbynens/dotfiles)

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

## One-liner execution
**NOTE** It will execute ALL the configurations on your computer so make sure you understand it before executing the following code :)

- Copy the file:
```cd; curl -#L https://github.com/tirolo/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,LICENSE}```

- Then execute the bootstrap

```source bootstrap.sh```