
package model;


public class Continentes {
    // atributos
    private int cdCont;
    private String nomeCont;
    private long populacaoCont;
    private long tamanhoCont;
    // construtores
    public Continentes() {
        this(0, "", 0, 0);
    }
    
    public Continentes(int cdCont) {
        this(cdCont, "", 0,0);
    }

    public Continentes(int cd, String nm, long po, long ta) {
        setCdCont(cdCont);
        setNomeCont(nomeCont);
        setPopulacaoCont(populacaoCont);
        setTamanhoCont(tamanhoCont);     
    }

    public void setCdCont(int cdCont) {
        this.cdCont = cdCont;
    }

    public void setNomeCont(String nomeCont) {
        this.nomeCont = nomeCont;
    }

    public void setPopulacaoCont(long populacaoCont) {
        this.populacaoCont = populacaoCont;
    }

    public void setTamanhoCont(long tamanhoCont) {
        this.tamanhoCont = tamanhoCont;
    }

    public int getCdCont() {
        return cdCont;
    }

    public String getNomeCont() {
        return nomeCont;
    }

    public long getPopulacaoCont() {
        return populacaoCont;
    }

    public long getTamanhoCont() {
        return tamanhoCont;
    }

    @Override
    public String toString() {
        return "Contienete [CdCont=" + cdCont + ", nomeCont=" + nomeCont
                + ", populacaoCont=" + populacaoCont + ", tamanhoCont=" + tamanhoCont + "]";
    }   

    
}


        