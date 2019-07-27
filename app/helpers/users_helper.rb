module UsersHelper

  def tipo usuario
    return "Administrador" if usuario.admin
    "Cliente"
  end

  def anuncio usuario
    return "#{link_to sale_path(usuario.sale)}" unless usuario.sale.nil?
    link_to "Criar anúncio", new_sale_path()
    "Em obras"
  end
end
