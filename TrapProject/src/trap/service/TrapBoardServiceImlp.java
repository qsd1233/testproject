package trap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import trap.model.TrapBoardDAO;
import trap.model.NoticeDTO;
import trap.model.StoryDTO;

@Service
public class TrapBoardServiceImlp implements TrapBoardService{
	
	@Autowired
	private TrapBoardDAO boardDao;
	
	@Override
	public List<NoticeDTO> noticeAll() {
		return boardDao.noticeAll();
	}

	@Override
	public NoticeDTO noticeOne(int nId) {
		return boardDao.noticeOne(nId);
	}

	@Override
	public List<StoryDTO> storyAll() {
		return boardDao.storyAll();
	}
	
}
