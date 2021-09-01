file_paths <- list(
  # CURTAIN VIDEO
  curtain_video = file.path(getwd(), "CURTAIN.mov"),

  # FIRST TEST_CONDITIONS (tc)
  first_tc_vid = c(
    file.path(getwd(), "FIRST", "TEST_CONDITIONS", "ACTORS_OBEN"),
    file.path(getwd(), "FIRST", "TEST_CONDITIONS", "ACTORS_UNTEN")
  ),
  first_tc_obj =
    file.path(getwd(), "FIRST", "TEST_CONDITIONS", "OBJECTS"),
  first_tc_out = c(
    file.path(getwd(), "FIRST", "TEST_CONDITIONS", "OUT_TEST_OBEN"),
    file.path(getwd(), "FIRST", "TEST_CONDITIONS", "OUT_TEST_UNTEN")
  ),
  first_tc_curtain = c(
    file.path(getwd(), "FIRST", "TEST_CONDITIONS", "CURTAIN_OBEN"),
    file.path(getwd(), "FIRST", "TEST_CONDITIONS", "CURTAIN_UNTEN")
  ),

  # FIRST PRETEST_CONDITIONS (pc)
  first_pc_vid = c(
    file.path(getwd(), "FIRST", "PRETEST_CONDITIONS", "ACTORS_OBEN"),
    file.path(getwd(), "FIRST", "PRETEST_CONDITIONS", "ACTORS_UNTEN")
  ),
  first_pc_obj =
    file.path(getwd(), "FIRST", "PRETEST_CONDITIONS", "OBJECTS"),
  first_pc_out = c(
    file.path(getwd(), "FIRST", "PRETEST_CONDITIONS", "OUT_PRETEST_OBEN"),
    file.path(getwd(), "FIRST", "PRETEST_CONDITIONS", "OUT_PRETEST_UNTEN")
  ),
  first_pc_curtain = c(
    file.path(getwd(), "FIRST", "PRETEST_CONDITIONS", "CURTAIN_OBEN"),
    file.path(getwd(), "FIRST", "PRETEST_CONDITIONS", "CURTAIN_UNTEN")
  ),

  # THIRD TEST_CONDITIONS (tc)
  third_tc_vid = c(
    file.path(getwd(), "THIRD", "TEST_CONDITIONS", "ACTORS_OBEN"),
    file.path(getwd(), "THIRD", "TEST_CONDITIONS", "ACTORS_UNTEN")
  ),
  third_tc_obj =
    file.path(getwd(), "THIRD", "TEST_CONDITIONS", "OBJECTS"),
  third_tc_out = c(
    file.path(getwd(), "THIRD", "TEST_CONDITIONS", "OUT_TEST_OBEN"),
    file.path(getwd(), "THIRD", "TEST_CONDITIONS", "OUT_TEST_UNTEN")
  ),
  third_tc_curtain = c(
    file.path(getwd(), "THIRD", "TEST_CONDITIONS", "CURTAIN_OBEN"),
    file.path(getwd(), "THIRD", "TEST_CONDITIONS", "CURTAIN_UNTEN")
  ),

  # THIRD PRETEST_CONDITIONS (pc)
  third_pc_vid = c(
    file.path(getwd(), "THIRD", "PRETEST_CONDITIONS", "ACTORS_OBEN"),
    file.path(getwd(), "THIRD", "PRETEST_CONDITIONS", "ACTORS_UNTEN")
  ),
  third_pc_obj =
    file.path(getwd(), "THIRD", "PRETEST_CONDITIONS", "OBJECTS"),
  third_pc_out = c(
    file.path(getwd(), "THIRD", "PRETEST_CONDITIONS", "OUT_PRETEST_OBEN"),
    file.path(getwd(), "THIRD", "PRETEST_CONDITIONS", "OUT_PRETEST_UNTEN")
  ),
  third_pc_curtain = c(
    file.path(getwd(), "THIRD", "PRETEST_CONDITIONS", "CURTAIN_OBEN"),
    file.path(getwd(), "THIRD", "PRETEST_CONDITIONS", "CURTAIN_UNTEN")
  ),

  # OUTCOME
  outcome_grey_video = file.path(getwd(), "OUTCOME", "OUTCOME.mp4"),
  outcome_curtain_video = file.path(getwd(), "OUTCOME", "CURTAIN_OUTCOME.mov"),
  # OUTCOME TEST (tc)
  outcome_tc_obj =
    file.path(getwd(), "OUTCOME", "TEST"),
  outcome_tc_out = c(
    file.path(getwd(), "OUTCOME", "OUT_TEST_OBEN"),
    file.path(getwd(), "OUTCOME", "OUT_TEST_UNTEN")
  ),
  outcome_tc_cutain = c(
    file.path(getwd(), "OUTCOME", "CURTAIN_OBEN"),
    file.path(getwd(), "OUTCOME", "CURTAIN_UNTEN")
  ),
  # OUTCOME PRETEST (pc)
  outcome_pc_obj =
    file.path(getwd(), "OUTCOME", "PRETEST"),
  outcome_pc_out = c(
    file.path(getwd(), "OUTCOME", "OUT_PRETEST_OBEN"),
    file.path(getwd(), "OUTCOME", "OUT_PRETEST_UNTEN")
  ),
  outcome_pc_cutain = c(
    file.path(getwd(), "OUTCOME", "PRETEST_CURTAIN_OBEN"),
    file.path(getwd(), "OUTCOME", "PRETEST_CURTAIN_UNTEN")
  )
)


# Object Coordinates
# 💡 Coordinates origin in the top left corner (0,0).
# That means, if you want the center of your object to sit at (960,180), you need to shift it...
# ... by subtracting the half of width/height of the object dimensions.
# ... For example, if you want the center x position to be 960, do this:
# ... centered_positon_x = 960 - object_width / 2.
obj_coords <- list(
  top = list(
    x = 960 - 260 / 2,
    y = 180 - 260 / 2
  ),
  bottom = list(
    x = 960 - 260 / 2,
    y = 900 - 260 / 2
  )
)
