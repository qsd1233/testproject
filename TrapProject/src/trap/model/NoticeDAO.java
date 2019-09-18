package trap.model;

import java.util.List;

public interface NoticeDAO {
	public List<NoticeDTO> noticeAll();
	public NoticeDTO noticeOne(int nId);
}
