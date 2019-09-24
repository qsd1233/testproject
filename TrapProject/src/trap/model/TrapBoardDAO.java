package trap.model;

import java.util.List;

public interface TrapBoardDAO {
	public List<NoticeDTO> noticeAll();
	public NoticeDTO noticeOne(int nId);
	public List<StoryDTO> storyAll();
}
