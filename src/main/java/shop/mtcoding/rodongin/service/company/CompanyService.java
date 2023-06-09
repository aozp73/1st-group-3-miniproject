package shop.mtcoding.rodongin.service.company;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import shop.mtcoding.rodongin.dto.company.CompanyReq.CompanyJoinReqDto;
import shop.mtcoding.rodongin.dto.company.CompanyReq.CompanyLoginReqDto;
import shop.mtcoding.rodongin.dto.company.CompanyResp.CompanyDetailRespDto;
import shop.mtcoding.rodongin.handler.ex.CustomApiException;
import shop.mtcoding.rodongin.handler.ex.CustomException;
import shop.mtcoding.rodongin.model.company.Company;
import shop.mtcoding.rodongin.model.company.CompanyRepository;
import shop.mtcoding.rodongin.util.Encode;
import shop.mtcoding.rodongin.util.HtmlParser;
import shop.mtcoding.rodongin.util.PathUtil;

@Service
public class CompanyService {

    @Autowired
    private CompanyRepository companyRepository;

    @Transactional
    public Company 로그인(CompanyLoginReqDto companyLoginReqDto) {
        Company principalPS = companyRepository.findByCompanyUsername(companyLoginReqDto.getCompanyUsername());
        if (principalPS == null) {
            throw new CustomException("일치하는 회원 정보가 없습니다.");
        }
        boolean isCheck;
        try {
            isCheck = Encode.matches(companyLoginReqDto.getCompanyPassword(), principalPS.getCompanyPassword());
        } catch (Exception e) {
            throw new CustomException("???");
        }

        if (!isCheck) {
            throw new CustomException("비밀번호가 다릅니다.");
        }
        companyLoginReqDto.setCompanyPassword(principalPS.getCompanyPassword());

        Company principal = companyRepository.findByCompanyNameAndPassword(companyLoginReqDto);
        if (principal == null) {
            throw new CustomException("일치하는 회원정보가 없습니다.");
        }
        return principal;

    }

    @Transactional
    public void 회원가입(CompanyJoinReqDto companyJoinReqDto) {

        Company sameEmployee = companyRepository.findByCompanyUsername(companyJoinReqDto.getCompanyUsername());

        if (sameEmployee != null) {
            throw new CustomException("동일한 아이디가 존재합니다");
        }

        String encodedPassword = "";
        try {
            
            encodedPassword = Encode.passwordEncode(companyJoinReqDto.getCompanyPassword());

        } catch (Exception e) {
            throw new CustomException("비밀번호 해싱 오류", HttpStatus.INTERNAL_SERVER_ERROR);
        }
        companyJoinReqDto.setCompanyPassword(encodedPassword);
        // System.out.println("테스트");

        companyRepository.insert(companyJoinReqDto);
        try {

        } catch (Exception e) {
            throw new CustomException("일시적인 서버 에러입니다.", HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @Transactional
    public void 기업소개등록(CompanyDetailRespDto companyDetailRespDto, int comPrincipalId, MultipartFile profile){
        
        String thumbnail = PathUtil.writeImageFile(profile);

        if (profile == null || profile.isEmpty()) {
            thumbnail = companyRepository.findById(comPrincipalId).getCompanyThumbnail();
        }
        
        int result = companyRepository.updateById(
            comPrincipalId,
            companyDetailRespDto.getCompanyFullname(),
            thumbnail,
            companyDetailRespDto.getCompanyEstablish(),
            companyDetailRespDto.getCompanySales(),
            companyDetailRespDto.getCompanyEmployeesNumber(),
            companyDetailRespDto.getCompanyIntroduction(),
            companyDetailRespDto.getCompanyHistory(),
            companyDetailRespDto.getCompanyVision()
        );


        if (result != 1) {
            throw new CustomApiException("기업소개 수정 실패", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
