local git_setup, git = pcall(require, "git")
if not git_setup then
	return
end

git.setup()
