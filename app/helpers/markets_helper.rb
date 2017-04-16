module MarketsHelper

  def clothing(temperature)
   if temperature >= 25
    "Tranquil, habille toi léger"
  elsif temperature >= 18 && temperature <= 24
     "Pas mal mais prévoie des manches longues"
   elsif temperature >= 12 && temperature <=17
     "Mets un bon pull!"
   elsif temperature >= 6 && temperature <= 11
     "Mets un bon manteau, fait pas chaud!"
   elsif temperature >= 0 && temperature <= 5
     "Anorak, écharpe, bonnet, chaussettes en laine"
   else
     "Si tu sors c'est que tu es fou !"
   end
  end
end
