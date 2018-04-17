class InfoJaskulaController < ApplicationController
  def wyswietl
  	@imieJaskula = 'Paweł'
  	@nazwiskoJaskula = 'Jaskuła'
  	@randomJaskula = ['Rafał Stolarczyk', 'Philip Kogel']
  	@nazwaJaskula = 'Kurs wspinaczkowy'
  	@infoJaskula = 'Szkoła która nauczy Cię wspinaczki, o zera do bohatera, serdecznie zapraszamy, szczegółowe info na stronie głównej'
  end
end
