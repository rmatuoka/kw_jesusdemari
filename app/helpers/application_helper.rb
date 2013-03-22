module ApplicationHelper
  def translate_section_page(page)
    case page
      when 1 then return "Home"
      when 2 then return "Grupo JDM"
      when 3 then return "Serviços"
      when 4 then return "Produtos"
      when 5 then return "Novidades"
      when 6 then return "Sustentabilidade"
      when 7 then return "Contato"
    end
  
  end
  def print_active(status)
    retorno = ''
    if status
      retorno = 'sim'
    else
      retorno = 'não'
    end
    return retorno
  end
end
