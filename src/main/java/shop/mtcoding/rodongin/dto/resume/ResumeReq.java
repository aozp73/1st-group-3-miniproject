package shop.mtcoding.rodongin.dto.resume;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

public class ResumeReq {

    @Setter
    @Getter
    public static class ResumeSaveDto {
        private int id;
        private String resumeTitle;
        private String resumeSalary;
        private String CV;
    }

    @Getter
    @Setter
    public static class ResumeGraduateSaveDto {
        private Integer schoolId;
        private String schoolGraduate;
    }

    @Getter
    @Setter
    public static class ResumeCareerSaveDto {
        private String careerCompany;
        private Date careerStart;
        private Date careerEnd;
    }

    @Getter
    @Setter
    public static class ResumeLicenseSaveDto {
        private Integer licenseId;
        private String licenseIssuer;
    }

    @Getter
    @Setter
    public static class ResumeStackSaveDto {
        private Integer stackId;
        private String stackAcquistion;
    }

}
