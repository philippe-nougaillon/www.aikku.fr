# frozen_string_literal: true

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true

pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true

pin_all_from "app/javascript/controllers", under: "controllers"

pin "stimulus-notification", to: "https://ga.jspm.io/npm:stimulus-notification@2.0.0/dist/stimulus-notification.es.js"
pin "stimulus-animated-number", to: "https://ga.jspm.io/npm:stimulus-animated-number@4.1.0/dist/stimulus-animated-number.mjs"