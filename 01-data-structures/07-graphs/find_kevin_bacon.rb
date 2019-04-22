def find_kevin_bacon(node, path = [])
  return "Too many films to bring home the Bacon" if path.length == 6

  if node.name == "Kevin Bacon"
    return "This is Kevin Bacon"
  else
    actor_with_most_films = nil
    for film, actors in node.film_actor_hash
      for actor in actors
        if actor.name == "Kevin Bacon"
          path << film
          return path
        else
          if (actor_with_most_films.nil? || actor.film_actor_hash.length > actor_with_most_films["actor"].film_actor_hash.length) && actor.searched_flag == false
            actor_with_most_films = {"film" => film, "actor" => actor}
          end
        end
      end
    end

    return "Couldn't bring home the Bacon" if actor_with_most_films.nil?

    node.searched_flag = true

    path << actor_with_most_films["film"].to_s if !path.include?(actor_with_most_films["film"].to_s)

    find_kevin_bacon(actor_with_most_films["actor"], path)
  end
end
