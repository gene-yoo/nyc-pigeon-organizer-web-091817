def nyc_pigeon_organizer(data)
  solution = {}
  pigeon_keys = get_pigeon_names(data)

  pigeon_keys.each do |name|
    solution[name] = {
      :color => get_data_by_attribute(data, :color, name),
      :gender => get_data_by_attribute(data, :gender, name),
      :lives => get_data_by_attribute(data, :lives, name)
    }
  end
  solution
end

def get_data_by_attribute(data, attribute, name)
  solution = []
  data[attribute].each do |key, pigeons|
    pigeons.each do |pigeon|
      if pigeon == name
        solution << key.to_s
      end
    end
  end
  solution
end

def get_pigeon_names(data)
  data.map do |attribute, info|
    info.map do |value, pigeons|
      pigeons
    end
  end.flatten.uniq
end
