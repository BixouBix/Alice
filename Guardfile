group :red_green_refactor, halt_on_fail: true do
  guard :rspec, cmd: 'bundle exec rspec' do
    require 'guard/rspec/dsl'
    dsl = Guard::RSpec::Dsl.new(self)

    # Feel free to open issues for suggestions and improvements

    # RSpec files
    rspec = dsl.rspec
    watch(rspec.spec_helper) { rspec.spec_dir }
    watch(rspec.spec_support) { rspec.spec_dir }
    watch(rspec.spec_files)

    # Ruby files
    ruby = dsl.ruby
    dsl.watch_spec_files_for(ruby.lib_files)

    # Rails files
    rails = dsl.rails(view_extensions: %w[erb haml slim])
    dsl.watch_spec_files_for(rails.app_files)
    dsl.watch_spec_files_for(rails.views)

    watch(rails.controllers) do |m|
      [
        rspec.spec.call("routing/#{m[1]}_routing"),
        rspec.spec.call("controllers/#{m[1]}_controller"),
        rspec.spec.call("acceptance/#{m[1]}")
      ]
    end

    # Rails config changes
    watch(rails.spec_helper)     { rspec.spec_dir }
    watch(rails.routes)          { "#{rspec.spec_dir}/routing" }
    watch(rails.app_controller)  { "#{rspec.spec_dir}/controllers" }

    # Capybara features specs
    watch(rails.view_dirs)     { |m| rspec.spec.call("features/#{m[1]}") }
    watch(rails.layouts)       { |m| rspec.spec.call("features/#{m[1]}") }

    # Turnip features and steps
    watch(%r{^spec/acceptance/(.+)\.feature$})
    watch(%r{^spec/acceptance/steps/(.+)_steps\.rb$}) do |m|
      Dir[File.join("**/#{m[1]}.feature")][0] || 'spec/acceptance'
    end
  end

  # guard :rubocop, cmd: 'rubocop --auto-correct' do
  #   watch(/.+\.rb$/)
  #   watch(%r{(?:.+/)?\.rubocop(?:_todo)?\.yml$}) { |m| File.dirname(m[0]) }
  # end

  guard 'livereload' do
    extensions = {
      css: :css,
      scss: :css,
      sass: :css,
      js: :js,
      coffee: :js,
      html: :html,
      png: :png,
      gif: :gif,
      jpg: :jpg,
      jpeg: :jpeg,
      # less: :less, # uncomment if you want LESS stylesheets done in browser
    }

    rails_view_exts = %w(erb haml slim)

    # file types LiveReload may optimize refresh for
    compiled_exts = extensions.values.uniq
    watch(%r{public/.+\.(#{compiled_exts * '|'})})

    extensions.each do |ext, type|
      watch(%r{
            (?:app|vendor)
            (?:/assets/\w+/(?<path>[^.]+) # path+base without extension
             (?<ext>\.#{ext})) # matching extension (must be first encountered)
            (?:\.\w+|$) # other extensions
            }x) do |m|
        path = m[1]
        "/assets/#{path}.#{type}"
      end
    end

    # file needing a full reload of the page anyway
    watch(%r{app/views/.+\.(#{rails_view_exts * '|'})$})
    watch(%r{app/helpers/.+\.rb})
    watch(%r{config/locales/.+\.yml})
  end

  guard 'zeus' do
    require 'ostruct'

    rspec = OpenStruct.new

    # Ruby apps
    ruby = OpenStruct.new
    ruby.lib_files = /^(lib\/.+)\.rb$/


    # Rails example
    rails = OpenStruct.new
    rails.app_files = /^app\/(.+)\.rb$/
    rails.views_n_layouts = /^app\/(.+(?:\.erb|\.haml|\.slim))$/
    rails.controllers = %r{^app/controllers/(.+)_controller\.rb$}

  end

end
