package trap.service;

import java.util.List;

import trap.model.NoticeDTO;
import trap.model.StoryDTO;

public interface TrapBoardService {
	public List<NoticeDTO> noticeAll();
	public NoticeDTO noticeOne(int nId);
	public List<StoryDTO> storyAll();
}
