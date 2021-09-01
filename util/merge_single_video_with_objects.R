merge_single_video_with_objects <- function(input_video, objects_dir, output_dirs) {
  counter <- 0
  total_videos <- length(list.files(objects_dir)) * length(output_dirs)

  # # get basename of video
  # video_basename <- basename(input_video)
  # # remove extension from basename (or use str_replace(current_video_basename, "mp4", ""))
  # video_basename <- tools::file_path_sans_ext(video_basename)

  for (current_output in output_dirs) {

    # setup target folder
    target_folder <- ifelse(
      grepl("OBEN", current_output), output_dirs[1], output_dirs[2]
    )

    # set object coords
    obj_location <- "UNTEN"
    current_coords <- obj_coords$bottom
    if (identical(target_folder, output_dirs[1])) {
      current_coords <- obj_coords$top
      obj_location <- "OBEN"
    }

      for (current_object in list.files(objects_dir, full.names = TRUE)) {

        # get basename of object
        current_object_basename <- basename(current_object)

        # remove extension from basename
        current_object_basename <- tools::file_path_sans_ext(current_object_basename)


        # FFmpeg
        counter <- counter + 1
        print(str_interp("Processing video #${counter} (of ${total_videos}, ${round(counter/total_videos,digits = 2) * 100}%)."))

        system(
          paste(
            "ffmpeg -loglevel warning -i",
            input_video,
            "-i",
            current_object,
            str_interp("-filter_complex \"[0:v][1:v] overlay=${current_coords$x}:${current_coords$y}\""),
            "-pix_fmt yuv420p -an",
            file.path(
              target_folder,
              str_interp("OUTCOME_${current_object_basename}_${obj_location}.mp4")
            )
          )
        )

        print(str_interp("Video #${counter} done!"))
      }
  }
  print("+++++++++++LOOP DONE+++++++++++")
}
