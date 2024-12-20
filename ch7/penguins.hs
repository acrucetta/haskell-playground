data Penguin =
    Peng WherePenguinsLive 
    deriving (Eq, Show)

data WherePenguinsLive =
    Galapagos
    | Antarctica
    | Australia
    | SouthAfrica
    | SouthAmerica deriving (Eq, Show)

isSA :: WherePenguinsLive -> Bool
isSA SouthAfrica = True
isSA _ = False

gimmeWhereTheyLive :: Penguin -> WherePenguinsLive 
gimmeWhereTheyLive (Peng whereitlives) = whereitlives

galapagosPenguin :: Penguin -> Bool 
galapagosPenguin (Peng Galapagos) = True 
galapagosPenguin _ = False

antarcticPenguin :: Penguin -> Bool 
antarcticPenguin (Peng Antarctica) = True 
antarcticPenguin _ = False

antarcticOrGalapagos :: Penguin -> Bool 
antarcticOrGalapagos p =
    (galapagosPenguin p) || (antarcticPenguin p)