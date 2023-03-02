package shop.mtcoding.rodongin.model.announcement;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import shop.mtcoding.rodongin.dto.announcement.AnnouncementReq.AnnouncementUpdateReqDto;
import shop.mtcoding.rodongin.dto.announcement.AnnouncementResp.AnnouncementDetailReqDto;



// 명사가 뒤 동사가 앞으로
@Mapper
public interface AnnouncementRepository {


    public AnnouncementDetailReqDto findAnnouncementAndCompanyId(int id);

    public List<AnnouncementDetailReqDto> findAnnouncementlist();
    // public List<AnnouncementDetailReqDto> findByDetailUser(int id);

    public List<Announcement> findTopList();

    public List<Announcement> findAll();

    public Announcement findById(int id);

     
    public int insert(@Param("companyId") int companyId, 
                    @Param("stackId") int stackId, 
                    @Param("announcementTitle") String announcementTitle,
                    @Param("announcementContent") String announcementContent,
                    @Param("announcementCarrer") String announcementCarrer,
                    @Param("announcementHireType") String announcementHireType,
                    @Param("announcementRecNum") int announcementRecNum,
                    @Param("announcementSalary") String announcementSalary,
                    @Param("announcementArea") String announcementArea);
                    
                    public int updateById(@Param("announcementUpdateReqDto")AnnouncementUpdateReqDto announcementUpdateReqDto,
                                                    @Param("id") int id);

    public int deleteById(int id);
}