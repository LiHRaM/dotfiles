.PHONY: waybar
waybar: style.css
	systemctl --user restart waybar.service

style.css: style.scss
	nu -c "grass style.scss | save style.css"
