namespace :manage_genres do
  desc "TODO"
  task add: :environment do
  
    current_genre = nil
    File.open("#{Rails.root}/lib/tasks/genres.txt").each_line do |l|
    
      if(l =~ /^\s{4}\w+/o )
        l.chop!
        l.gsub!(/\s+/, ' ')
 
        current_genre = Genre.create(name: l)
        puts "new Genre #{l}"
      else
        #current_genre.add_child(l)
        
        l.gsub!(/\s+/, ' ')
        current_genre.children.create!(:name => l)
        
        #puts Genre.create!(:parent_id => current_genre.id, :name => l)
        puts "#{current_genre.name} added child #{l}"
      end
      
    end    

    
  end

end
