package trap.service;

import java.util.List;

import trap.model.NoticeDTO;

public interface TrapBoardService {
	public List<NoticeDTO> noticeAll();
	public NoticeDTO noticeOne(int nId);
}
