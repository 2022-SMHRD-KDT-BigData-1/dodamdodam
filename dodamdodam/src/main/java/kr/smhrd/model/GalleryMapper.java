package kr.smhrd.model;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface GalleryMapper {

	void GalleryInsert(GalleryVO vo);

	public List<GalleryVO> gallerySelect(String id);

	void galleryDelete(GalleryVO vo);
	
	
}
