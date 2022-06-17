package com.ibm.cloud.demo.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.io.Serializable;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Document("customer")
public class CustomerDto implements Serializable {
    @Id
    private String id;
    private String firstName;
    private String lastName;
    private String email;
    private String phoneNo;
    private AddressDto addressDto;
}
