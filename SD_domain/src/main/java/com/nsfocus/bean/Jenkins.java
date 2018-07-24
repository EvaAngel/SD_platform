package com.nsfocus.bean;

public class Jenkins {
    private Integer id;
    private String cloneStyle;
    private String resp;
    private String dyScan;
    private StaScan staScan;
    private RelySecurity relySecurity;
    private Rsas rsas;
    private Bvs bvs;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCloneStyle() {
        return cloneStyle;
    }

    public void setCloneStyle(String cloneStyle) {
        this.cloneStyle = cloneStyle;
    }

    public String getResp() {
        return resp;
    }

    public void setResp(String resp) {
        this.resp = resp;
    }

    public String getDyScan() {
        return dyScan;
    }

    public void setDyScan(String dyScan) {
        this.dyScan = dyScan;
    }

    public StaScan getStaScan() {
        return staScan;
    }

    public void setStaScan(StaScan staScan) {
        this.staScan = staScan;
    }

    public RelySecurity getRelySecurity() {
        return relySecurity;
    }

    public void setRelySecurity(RelySecurity relySecurity) {
        this.relySecurity = relySecurity;
    }

    public Rsas getRsas() {
        return rsas;
    }

    public void setRsas(Rsas rsas) {
        this.rsas = rsas;
    }

    public Bvs getBvs() {
        return bvs;
    }

    public void setBvs(Bvs bvs) {
        this.bvs = bvs;
    }
}
