package com.dtnsbike.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "Discounts")
public class Discounts implements Serializable{
private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "[discountid]")
    private Integer id;

    @Column(name = "[value]")
    private Double value;
    
    @Column(name = "[description]")
    private String description;
    
    @JsonIgnore
    @OneToMany(mappedBy = "discountid")
    List<Products> product;
}
