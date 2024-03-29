# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "bootstrap", to: "https://ga.jspm.io/npm:bootstrap@5.3.2/dist/js/bootstrap.esm.js"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.8/lib/index.js"
pin "flatpickr", to: "https://ga.jspm.io/npm:flatpickr@4.6.13/dist/esm/index.js"
# pin "rangePlugin", to: "flatpickr-rangePlugin.js"
# pin "rangePlugin", to: "https://cdn.skypack.dev/flatpickr/dist/plugins/rangePlugin.js", preload: true
pin "rangePlugin", to: "https://cdn.skypack.dev/flatpickr/dist/plugins/rangePlugin.js", preload: true
pin "mapbox-gl", to: "https://ga.jspm.io/npm:mapbox-gl@2.15.0/dist/mapbox-gl.js"
pin "process", to: "https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js"

