package trap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trap.model.NoticeDAO;
import trap.model.NoticeDTO;

@Service
public class TrapBoardServiceImlp implements TrapBoardService{
	
	@Autowired
	private NoticeDAO noticeDao;
	
	@Override
	public List<NoticeDTO> noticeAll() {
		return noticeDao.noticeAll();
	}

	@Override
	public NoticeDTO noticeOne(int nId) {
		return noticeDao.noticeOne(nId);
	}
	
}
