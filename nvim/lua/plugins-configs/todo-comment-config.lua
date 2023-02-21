-- import todo-comment plugin safely
local todo_comment_status, todo_comment = pcall(require, "todo-comment")
if not todo_comment_status then
	return
end

todo_comment.setup({})
