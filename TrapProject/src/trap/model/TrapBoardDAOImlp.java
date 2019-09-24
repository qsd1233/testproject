package trap.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("trapBoardDao")
public class TrapBoardDAOImlp implements TrapBoardDAO{
	
	@Autowired
	private TrapBoardMapper trapBoardMapper;

	@Override
	public List<NoticeDTO> noticeAll() {
		return trapBoardMapper.noticeAll();
	}

	@Override
	public NoticeDTO noticeOne(int nId) {
		return trapBoardMapper.noticeOne(nId);
	}

	@Override
	public List<StoryDTO> storyAll() {
		return trapBoardMapper.storyAll();
	}

}
