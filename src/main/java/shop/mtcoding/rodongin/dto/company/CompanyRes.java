package shop.mtcoding.rodongin.dto.company;

import java.math.BigInteger;
import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

public class CompanyRes {

    @Getter
    @Setter
    public static class CompanyDetailResDto {
        private String companyFullname;
        private String companyThumbnail;
        private Date companyEstablish;
        private BigInteger companySales;
        private int companyEmployeesNumber;
        private String companyIntroduction;
        private String companyHistory;
        private String companyVision;
        
        
        
    
    }
}
