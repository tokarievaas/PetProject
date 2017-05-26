package com.tokarieva.domain;

import javax.persistence.Entity;
import javax.xml.bind.annotation.XmlType;
import java.io.Serializable;

@XmlType

@Entity
public class Music extends Media implements Serializable {

    private String style;
    private String performer;

    public Music() {
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getPerformer() {
        return performer;
    }

    public void setPerformer(String performer) {
        this.performer = performer;
    }

    public boolean equals(Object other){

        if (!super.equals(other)){
            return false;
        }

        if (this == other){
            return true;
        }
        if (other == null){
            return false;
        }
        if (!(other instanceof Music)){
            return false;
        }

        Music otherMusic = (Music) other;

        return ((this.style.equals(otherMusic.style))  || ((otherMusic.style != null) &&  (otherMusic.style.equals(this.style))))
                && (this.performer.equals(otherMusic.performer))  || ((otherMusic.performer != null) &&  (otherMusic.performer.equals(this.performer)));
    }

}
