package com.tokarieva.domain;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.bind.annotation.XmlType;
import java.io.Serializable;

@XmlSeeAlso({Music.class, Movie.class})
@XmlType

@Entity
@Inheritance
public abstract class Media implements Serializable {

    private String name;
    private int year;
    private byte rating;
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private int id;


    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public byte getRating() {
        return rating;
    }

    public void setRating(byte rating) {
        this.rating = rating;
    }

    public boolean equals(Object other){
        if (this == other){
            return true;
        }
        if (other == null){
            return false;
        }
        if (!(other instanceof Media)){
            return false;
        }

        Media otherMedia = (Media) other;

        return ((this.name.equals(otherMedia.name))  || ((otherMedia.name != null) &&  (otherMedia.name.equals(this.name))))
                && (this.year == otherMedia.year)
                && (this.rating == otherMedia.rating)
                && (this.id == otherMedia.id);
    }
}
