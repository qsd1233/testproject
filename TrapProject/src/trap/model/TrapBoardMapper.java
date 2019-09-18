package trap.model;

import java.util.List;

@MyTrap
public interface TrapBoardMapper {
	public List<NoticeDTO> noticeAll();
	public NoticeDTO noticeOne(int nId);
}
