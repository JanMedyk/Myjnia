package pl.myjnia;

public enum enumSizes {


    Hatchban("mały"), Compakt("mały"), Sedan("sredni"), Combi("sredni"), SUV("duzy"), Pickup("duzy"), Van("van");
    private String rozmiar;

    enumSizes(String rozmiar) {
        this.rozmiar = rozmiar;
    }

    public String getRozmiar() {
        return rozmiar;
    }
}



