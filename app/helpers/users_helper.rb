module UsersHelper

  def tipo usuario
    return "Administrador" if usuario.admin
    "Cliente"
  end

  def anuncio usuario
    return "#{link_to "Novo", new_sale_path(usuario_id: usuario.id)}".html_safe if usuario.sales.nil?
    link_to "Ver anúncio", sale_path(usuario.sale)
  end
end
