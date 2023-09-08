class AirbenderService

  def all_characters
    get_url("/api/v1/characters")
  end

  def single_character(character_id)
    get_url("/api/v1/characters/#{character_id}")
  end

  def characters_with_nation_affiliation(affiliation)
    get_url("/api/v1/characters?affiliation=#{affiliation}")
  end

  def list_enemies_of(character)
    get_url("/api/v1/characters?enemies=#{character}")
  end

  def list_allies_of(character)
    get_url("/api/v1/characters?allies=#{character}")
  end

  def characters_that_match_partial(string)
    get_url("/api/v1/characters?name=#{string}")
  end

  def one_random_character
    get_url("/api/v1/characters/random")
  end

  def multiple_random_characters(count)
    get_url("/api/v1/characters/random?count=#{count}")
  end

  def all_avatars
    get_url("/api/v1/characters/avatar")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn 
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end
end