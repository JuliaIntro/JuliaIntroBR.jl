mutable struct MeuHorário
  hora 
  minuto
  segundo
  function MeuHorário(hora=0, minuto=0, segundo=0)
    new(hora, minuto, segundo)
  end
end