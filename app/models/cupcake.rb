class Cupcake < ActiveRecord::Base
    has_many :orders
    has_many :customers, through: :orders

   
end

def cupcake_picture
    puts " `````````````````-o.`````````````````````
    `````````````````````...-+osy.````````````````````
    ``````````````````/osoosss+/ys````````````````````
    ````````````````/osyoyho/+++y+oso-````````````````
    ```````````````:sosy/+y+/ssyso//++o/.`````````````
    ```````````````y++y+soooosy+/+oso+//os.```````````
    `````````````/os+ooso/+soo+oyysosooooos```````````
    ````````````o+y+oss++oooooooso++oysoooyy+.````````
    ````````````/oos+//ooooo////+oooooyysosyos````````
    ```````````-:ooooso+//ooyooooo++o+/+oossh-````````
    ``````````.dhso+ssssyyyysooooosyysooosyhyd````````
    ```````````-ys/so+s+s+h+s+ssos+y+y+ys+yso-````````
    ````````````:yy+:o//:++:o.+:/:-o-o//oo/s:`````````
    `````````````/hso:/o.o:+o-o.o-//o-o/o+s/``````````
    ``````````````syo+oo-o-o//o.o-o.o:+osso```````````
    `````````````./syss-oo.o-oo.o.o:+o+ooy.```````````
    ````````````-:/sysh:oo.o.oo.o.oo-oooss````````````
    ````````````.-://+ooos+s+ss+s/ss+soo+.````````````
    ```````````````...---::::::::::::--.``````````````"
end




