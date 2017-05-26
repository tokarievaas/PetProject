package com.tokarieva.domain;

import javax.persistence.Entity;
import javax.xml.bind.annotation.XmlType;
import java.io.Serializable;

@XmlType

@Entity
public class Movie extends Media implements Serializable {

    private String studio;
    private String category;
    private boolean adultOnly;

    public Movie() {
    }

    public String getStudio() {
        return studio;
    }

    public void setStudio(String studio) {
        this.studio = studio;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public boolean getAdultOnly() {
        return adultOnly;
    }

    public void setAdultOnly(boolean adultOnly) {
        this.adultOnly = adultOnly;
    }


    public boolean equals(Object obj){
        if (!super.equals(obj)){
            return false;
        }

        if (this == obj){
            return true;
        }
        if (obj == null){
            return false;
        }
        if (!(obj instanceof Movie)){
            return false;
        }

        Movie otherMovie = (Movie) obj;

        return ((this.studio.equals(otherMovie.studio))  || ((otherMovie.studio != null) &&  (otherMovie.studio.equals(this.studio))))
                && (this.category.equals(otherMovie.category))  || ((otherMovie.category != null) &&  (otherMovie.category.equals(this.category)))
                && (this.adultOnly == otherMovie.adultOnly);
    }
}
