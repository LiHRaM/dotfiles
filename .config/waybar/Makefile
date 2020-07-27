.PHONY: waybar
waybar: style.css
	systemctl --user restart waybar.service

style.css: current.scss style.scss
	nu -c "grass --no-charset style.scss | save style.css"
