package pl.myjnia;

public class CenyLakier {

    private int oneStep;
    private int dwaStep;
    private int trzyStep;
    private String rozmiar;

    public CenyLakier(String rozmiar) {
        if (rozmiar.equals("mały")) {
            this.oneStep = 500;
            this.dwaStep = 900;
            this.trzyStep = 1300;
        }
        if(rozmiar.equals("sredni"))
        {
            this.oneStep = 550;
            this.dwaStep = 1000;
            this.trzyStep = 1100;
        }
        if(rozmiar.equals("duzy") || rozmiar.equals("van"))
        {
            this.oneStep = 600;
            this.dwaStep = 1100;
            this.trzyStep = 1500;

        }

    }

    public int getOneStep() {
        return oneStep;
    }

    public int getDwaStep() {
        return dwaStep;
    }

    public int getTrzyStep() {
        return trzyStep;
    }
}
