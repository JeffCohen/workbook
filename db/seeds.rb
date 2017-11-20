Course.destroy_all

Course.create name: "Intro to Software Development",
              number: 'LAWSTUDY-713',
              local_folder: 'law713',
              url_path: 'law713'



puts "#{Course.count} course(s)"
