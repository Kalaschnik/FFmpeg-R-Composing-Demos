add_curtain_over_merged_videos <- function(input_videos, output_dirs, prefix_output = "") {
  counter <- 0
  total_videos <-
    length(input_videos) *
    (length(list.files(input_videos)) / length(input_videos))

  for (current_path in input_videos) {

    # setup target folder
    target_folder <- ifelse(
      grepl("OBEN", current_path), output_dirs[1], output_dirs[2]
    )

    for (current_video in list.files(current_path, full.names = TRUE)) {

      # get basename
      current_video_basename <- basename(current_video)

      # remove extension from basename (or use str_replace(current_video_basename, "mp4", ""))
      current_video_basename <- tools::file_path_sans_ext(current_video_basename)


      # FFmpeg
      counter <- counter + 1
      print(str_interp("Processing video #${counter} (of ${total_videos}, ${round(counter/total_videos,digits = 2) * 100}%)."))

      system(
        paste(
          "ffmpeg -loglevel warning -i",
          current_video,
          "-i",
          file_paths$curtain_video,
          "-filter_complex overlay",
          "-q:v 0", # "-c:v wmv2 -b:v 8192k",
          file.path(
            target_folder,
            str_interp("${prefix_output}${current_video_basename}.wmv")
          )
        )
      )

      print(str_interp("Video #${counter} done!"))
    }
  }
  print("+++++++++++LOOP DONE+++++++++++")
}
