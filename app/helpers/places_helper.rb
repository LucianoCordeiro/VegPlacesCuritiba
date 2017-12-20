module PlacesHelper

  def places_count
    Place.count
  end

  def search_count
    if @places.count > 0
      "Sua busca gerou " + pluralize(@places.count, "resultado")
    else
      "Nenhum estabelecimento foi encontrado"
    end
  end
end
