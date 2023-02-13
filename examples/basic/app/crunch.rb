def crunch_load(args, file)
  data = args.gtk.parse_json_file(file)
  textures = data["textures"]
  hash = {}
  textures.each { |atlas|
    images = atlas["images"]
    height = atlas["h"]
    images.each { |image|
      n = image["n"].to_sym
      n_data = {}
      n_data[:source_w] = image["w"]
      n_data[:source_h] = image["h"]
      n_data[:source_x] = image["x"]
      n_data[:source_y] = height - image["y"] - n_data[:source_h]
      n_data[:fx] = image["fx"]
      n_data[:fy] = image["fy"]
      n_data[:fw] = image["fw"]
      n_data[:fh] = image["fh"]
      hash[n] = n_data
    }
  }
  hash
end