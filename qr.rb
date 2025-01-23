require "rqrcode"

pp "What kind of url do you want a qr code for"
user_input = gets.chomp

qrcode = RQRCode::QRCode.new(user_input)

png = qrcode.as_png({ :size => 500 })

IO.binwrite("sometext.png", png.to_s)
