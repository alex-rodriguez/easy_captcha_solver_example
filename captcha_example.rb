require 'easy_captcha_solver'

# How to use use easy_captcha_solver gem:
# The gem only solves easy to read captchas, so it's up to you to decide if the output is valid or not.
# If you execute this example several times you will see how PNG captchas fail often, while JPG solves most of the captchas as well as LOCAL JPG

e = EasyCaptchaSolver.new(image_url: 'http://www.madrimasd.org/blogs/Empleo_madrimasd/wp-content/plugins/si-captcha-for-wordpress/captcha/securimage_show.php?si_form_id=com&amp;prefix=')
puts "PNG: #{e.captcha}"

e = EasyCaptchaSolver.new(image_url: 'http://www.madrid.org/infi_pub/html/web/CargarCaptchaAccion.icm?idCaptcha=')
puts "JPG: #{e.captcha}"

e = EasyCaptchaSolver.new(image_path: './captcha_test.jpg')
puts "JPG LOCAL: #{e.captcha}"
