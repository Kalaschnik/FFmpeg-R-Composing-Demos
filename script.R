# Clear workspace
rm(list = ls(all.names = TRUE)) # clears everything
graphics.off() # close all open graphics

if (!require(tidyverse)) install.packages(tidyerse)
library(tidyverse)

# import utility functions
list.files("util", "*.r$", full.names = TRUE, ignore.case = TRUE) %>% sapply(source)

# import interface
source("interface.R")


# CREATE VIDEOS
# ⚠️ make sure your folder structure matches with the one you find in interface.R!

# -----------------
# FIRST TEST_CONDITIONS (tc)
merge_videos_with_objects(file_paths$first_tc_vid, file_paths$first_tc_obj, file_paths$first_tc_out)
add_curtain_over_merged_videos(file_paths$first_tc_out, file_paths$first_tc_curtain, "FIRST-TEST_")
# FIRST PRETEST_CONDITIONS (pc)
merge_videos_with_objects(file_paths$first_pc_vid, file_paths$first_pc_obj, file_paths$first_pc_out)
add_curtain_over_merged_videos(file_paths$first_pc_out, file_paths$first_pc_curtain, "FIRST-PRETEST_")
# -----------------

# -----------------
# THIRD TEST_CONDITIONS (tc)
merge_videos_with_objects(file_paths$third_tc_vid, file_paths$third_tc_obj, file_paths$third_tc_out)
add_curtain_over_merged_videos(file_paths$third_tc_out, file_paths$third_tc_curtain, "THIRD-TEST_")
# FIRST PRETEST_CONDITIONS (pc)
merge_videos_with_objects(file_paths$third_pc_vid, file_paths$third_pc_obj, file_paths$third_pc_out)
add_curtain_over_merged_videos(file_paths$third_pc_out, file_paths$third_pc_curtain, "THIRD-PRETEST_")
# -----------------

# -----------------
# OUTCOME TEST (tc)
merge_single_video_with_objects(file_paths$outcome_grey_video, file_paths$outcome_tc_obj, file_paths$outcome_tc_out)
add_curtain_over_merged_videos(file_paths$outcome_tc_out, file_paths$outcome_tc_cutain)
# OUTCOME TEST (pc)
merge_single_video_with_objects(file_paths$outcome_grey_video, file_paths$outcome_pc_obj, file_paths$outcome_pc_out)
add_curtain_over_merged_videos(file_paths$outcome_pc_out, file_paths$outcome_pc_cutain)
# -----------------
