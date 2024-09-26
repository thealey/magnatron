// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
Turbo.setFormMode("off")
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false
import "trix"
import "@rails/actiontext"
import "./bootstrap.bundle.min"
import "./jquery-3.7.1.min"
import "./dataTables"
import "./dataTables.bootstrap5"
import "chartkick"
import "Chart.bundle"