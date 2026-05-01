# run_all.tcl

set project_name "axc3000_top"
set revision_name "axc3000_top"

puts "Opening project: $project_name"
project_open -revision $revision_name $project_name

# Source child scripts in order
source sources/axc3000_pin_assignment.tcl

# Save all assignments and close
export_assignments
project_close

puts "All assignments complete."