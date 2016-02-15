pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}



def nyc_pigeon_organizer(data)
  pigeon_list = {}
  array_of_names = []

  data.each { |color_gender_lives, value|
    value.each { |key, array|
      array.each { |name|
        if array_of_names.include?(name)
          next
        else
          array_of_names << name
          pigeon_list[name] = {}
        end
      }
    }
  }

  data.each { |color_gender_lives, values|
    pigeon_list.each { |names, hash|
      pigeon_list[names][color_gender_lives] = []
    }
  }

  data.each { |color_gender_lives, value|
    value.each { |description, names_array|
      names_array.each { |name|
        pigeon_list[name][color_gender_lives] << description.to_s
      }
    }
  }

  pigeon_list
end

