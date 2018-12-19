

/// Retorna las cantidades que se usaran en los materiales
/// para el Mortero. Requiere de AREA (double)
/// datos a obtener: ['cemento'] ['arena_gruesa'] ['arena_fina'] ['agua']
Map<String, double> calculoMaterialesMortero(int eleccion, double area){
  final double FACTORCANTO  = 0.0118;
  final double FACTORSOGA   = 0.0148;
  final double FACTORCABEZA = 0.0383;

  var dictio = {
    "cemento" : 0.0,
    "arena_fina": 0.0,
    "arena_gruesa": 0.0,
    "agua": 0.0
  };

  double volMortero;
  switch(eleccion){
    // caso SOGA
    case 0:
      volMortero = FACTORSOGA * area;
      dictio["cemento"] = 6.2 * volMortero;
      dictio["arena_gruesa"] = dictio["arena_fina"] = 0.5 * 1.133 * volMortero;
      dictio["agua"] = 0.263 * 1000 * volMortero;
      break;
    // caso CANTO 
    case 1:
      volMortero = FACTORCANTO * area;
      dictio["cemento"] = 6.2 * volMortero;
      dictio["arena_gruesa"] = dictio["arena_fina"] = 0.5 * 1.133 * volMortero;
      dictio["agua"] = 0.263 * 1000 * volMortero;
      break;
    // caso CABEZA
    case 2:
    volMortero = FACTORCABEZA * area;
      dictio["cemento"] = 8.8 * volMortero;
      dictio["arena_gruesa"] = dictio["arena_fina"] = 0.5 * 1.071 * volMortero;
      dictio["agua"] = 0.268 * 1000 * volMortero;
      break;
    
  }

  dictio.forEach((key, number) => dictio[key] = (number*1000).round()/1000);
  return dictio;
}