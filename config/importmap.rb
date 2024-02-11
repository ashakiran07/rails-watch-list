# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "bootstrap", to: "bootstrap.min.js", preload: true
pin "@popperjs/core", to: "popper.js", preload: true
pin "vue", to: 'https://cdn.jsdelivr.net/npm/vue@2.6.14/dist/vue.esm.browser.min.js'
pin_all_from "app/javascript/components", under: "components"
