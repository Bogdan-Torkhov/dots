local setup, git = pcall(require, "git")
if not setup then
	return
end

git.setup()
