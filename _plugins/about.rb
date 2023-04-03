# frozen_string_literal: true

# Agregar Sutty en el generador del sitio
module JekyllDropDecorator
  def self.included(base)
    base.class_eval do
      def version
        "#{Jekyll::VERSION} (Sutty)"
      end
    end
  end
end

Jekyll::Drops::JekyllDrop.include JekyllDropDecorator

# Traspasa información desde el layout de about a la configuración de
# Jekyll
Jekyll::Hooks.register :site, :post_read, priority: :high do |site|
  # Obtener los artículos ordenados
  #
  # XXX: Esto puede aumentar un poco el uso de recursos, porque tiene
  # que reordenar todos los artículos, pero no hay otra forma de
  # obtenerlos ordenados.
  posts = site.site_payload['site']['posts']

  # Encontrar el about que esté arriba de todo
  about = posts.find do |a|
    a.data['layout'] == 'about'
  end

  unless about
    Jekyll.logger.warn 'Falta un documento about'
    next
  end

  index = site.pages.find do |page|
    page.url == '/'
  end

  site.config['about'] = about
  site.config['tagline'] = about['tagline']
  site.config['description'] = about['description']
  site.config['logo'] = about.data.dig('logo', 'path')
  index.data['image'] = site.config['image'] = about['image']

  %w[social facebook twitter webmaster_verifications].each do |k|
    site.config[k] = {}
  end

  site.config['social']['links'] = about['social_networks']

  site.config['facebook']['app_id'] = about['facebook_app_id']
  site.config['facebook']['publisher'] =
    about['social_networks']&.find do |sn|
      sn.include? 'facebook.com'
    end

  %w[google bing alexa yandex baidu facebook].each do |verificator|
    site.config['webmaster_verifications'][verificator] =
      about["webmaster_verification_#{verificator}"]
  end

  site.config['twitter']['username'] =
    about['social_networks']&.find do |sn|
      sn.include? 'twitter.com'
    end&.split('/')&.last
end
