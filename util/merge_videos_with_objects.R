merge_videos_with_objects <- function(input_videos, objects_dir, output_dirs) {
  counter <- 0
  total_videos <-
    length(input_videos) *
    (length(list.files(input_videos)) / length(input_videos)) *
    length(list.files(objects_dir))

  for (current_path in input_videos) {

    # setup target folder
    target_folder <- ifelse(
      grepl("OBEN", current_path), output_dirs[1], output_dirs[2]
    )

    # set object coords
    current_coords <- obj_coords$bottom
    if (identical(target_folder, output_dirs[1])) {
      current_coords <- obj_coords$top
    }

    for (current_video in list.files(current_path, full.names = TRUE)) {

      # get basename
      current_video_basename <- basename(current_video)

      # remove extension from basename (or use str_replace(current_video_basename, "mp4", ""))
      current_video_basename <- tools::file_path_sans_ext(current_video_basename)



      for (current_object in list.files(objects_dir, full.names = TRUE)) {

        # get basename
        current_object_basename <- basename(current_object)

        # remove extension from basename
        current_object_basename <- tools::file_path_sans_ext(current_object_basename)


        # FFmpeg
        counter <- counter + 1
        print(str_interp("Processing video #${counter} (of ${total_videos}, ${round(counter/total_videos,digits = 2) * 100}%)."))

        system(
          paste(
            "ffmpeg -loglevel warning -i",
            current_video,
            "-i",
            current_object,
            str_interp("-filter_complex \"[0:v][1:v] overlay=${current_coords$x}:${current_coords$y}\""),
            "-pix_fmt yuv420p -an",
            file.path(
              target_folder,
              str_interp("${current_video_basename}_${current_object_basename}.mp4")
            )
          )
        )

        print(str_interp("Video #${counter} done!"))
      }
    }
  }
  print("+++++++++++LOOP DONE+++++++++++")
}
