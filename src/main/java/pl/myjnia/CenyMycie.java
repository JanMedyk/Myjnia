package pl.myjnia;

public class CenyMycie {

    private String rozmiar;
    private int małeZabrudzenie;
    private int średnieZabrudzenie;
    private int dużeZabrudzenie;
    private int mycieWewnatrzMałe;
    private int mycieWewnatrzSrednie;
    private int mycieWewnatrzDuze;
    private int mycieZewnatrz;
    private int woskTwardy;
    private int niewidzialnaWycieraczki;
    private int  osadmetaliczny;

    private int osadZeSmoly;

    private int woskPremium;

    public int getOsadmetaliczny() {
        return osadmetaliczny;
    }

    public int getOsadZeSmoly() {
        return osadZeSmoly;
    }

    public int getWoskPremium() {
        return woskPremium;
    }

    public int getWoskTwardy() {
        return woskTwardy;
    }

    public int getNiewidzialnaWycieraczki() {
        return niewidzialnaWycieraczki;
    }



    public int getMycieWewnatrzMałe() {
        return mycieWewnatrzMałe;
    }

    public int getMycieWewnatrzSrednie() {
        return mycieWewnatrzSrednie;
    }

    public int getMycieWewnatrzDuze() {
        return mycieWewnatrzDuze;
    }

    public int getMycieZewnatrz() {
        return mycieZewnatrz;
    }

    public int getMałeZabrudzenie() {
        return małeZabrudzenie;
    }

    public int getŚrednieZabrudzenie() {
        return średnieZabrudzenie;
    }

    public int getDużeZabrudzenie() {
        return dużeZabrudzenie;
    }

    public CenyMycie(String rozmiar) {
                woskTwardy=50;
                niewidzialnaWycieraczki=50;


        if (rozmiar.equals("mały")) {
            małeZabrudzenie = 100;
            średnieZabrudzenie = 110;
            dużeZabrudzenie = 120;
            mycieZewnatrz = 50;
            mycieWewnatrzMałe = 50;
            mycieWewnatrzSrednie = 60;
            mycieWewnatrzDuze = 70;
            osadmetaliczny=50;
            osadZeSmoly=50;
            woskPremium=300;
        }
        if (rozmiar.equals("średni")) {
            małeZabrudzenie = 110;
            średnieZabrudzenie = 120;
            dużeZabrudzenie = 130;
            mycieZewnatrz = 50;
            mycieWewnatrzMałe = 60;
            mycieWewnatrzSrednie = 70;
            mycieWewnatrzDuze = 80;
            osadmetaliczny=60;
            osadZeSmoly=60;
            woskPremium=350;
        }
        if (rozmiar.equals("duzy")) {
            this.małeZabrudzenie = 120;
            this.średnieZabrudzenie = 130;
            this.dużeZabrudzenie = 140;
            mycieZewnatrz = 60;
            mycieWewnatrzMałe = 70;
            mycieWewnatrzSrednie = 80;
            mycieWewnatrzDuze = 90;
            osadmetaliczny=70;
            osadZeSmoly=70;
            woskPremium=400;
        }
        if (rozmiar.equals("van")) {
            this.małeZabrudzenie = 140;
            this.średnieZabrudzenie = 150;
            this.dużeZabrudzenie = 160;
            mycieZewnatrz = 60;
            mycieWewnatrzMałe = 80;
            mycieWewnatrzSrednie = 90;
            mycieWewnatrzDuze = 100;
            osadmetaliczny=80;
            woskPremium=450;
        }


    }
}
