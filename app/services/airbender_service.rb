class AirbenderService
  def characters_with_nation_affiliation(affiliation)
    get_url("/api/v1/characters?affiliation=#{affiliation}&perPage=200")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn 
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end
end