package com.dtnsbike.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class ColorDetailModel implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	private String id;
	private String name;
	private Long amount;

}
