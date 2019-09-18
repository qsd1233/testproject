package trap.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("noticeDao")
public class NoticeDAOImlp implements NoticeDAO{
	
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

}
