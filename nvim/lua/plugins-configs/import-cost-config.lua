local import_cost_status, import_cost = pcall(require, "import-cost")
if not import_cost_status then
	return
end

import_cost.setup()
