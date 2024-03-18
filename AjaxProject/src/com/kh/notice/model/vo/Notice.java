package com.kh.notice.model.vo;

import java.sql.Date;

public class Notice {
	private int noticeNo;		//	NOTICE_NO
	private String noticeTtitle; //	NOTICE_TITLE
    private String noticeContent;			//	NOTICE_CONTENT
    private String noticeWriter;// 조회시 작성자 아이디로 보여주기 위해서 문자열 타입으로 선언함.
    private int count;//	COUNT
    private Date createDate;//	CREATE_DATE
    private String status;//	STATUS.
    
    public Notice() {
    	
    }

	public Notice(int noticeNo, String noticeTtitle, String noticeContent, String noticeWriter, int count,
			Date createDate, String status) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTtitle = noticeTtitle;
		this.noticeContent = noticeContent;
		this.noticeWriter = noticeWriter;
		this.count = count;
		this.createDate = createDate;
		this.status = status;
	}

	public Notice(int noticeNo, String noticeTtitle, String noticeWriter, int count, Date createDate) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTtitle = noticeTtitle;
		this.noticeWriter = noticeWriter;
		this.count = count;
		this.createDate = createDate;
	}

	public Notice(int noticeNo, String noticeTtitle, String noticeContent, String noticeWriter, Date createDate) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTtitle = noticeTtitle;
		this.noticeContent = noticeContent;
		this.noticeWriter = noticeWriter;
		this.createDate = createDate;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeTtitle() {
		return noticeTtitle;
	}

	public void setNoticeTtitle(String noticeTtitle) {
		this.noticeTtitle = noticeTtitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public String getNoticeWriter() {
		return noticeWriter;
	}

	public void setNoticeWriter(String noticeWriter) {
		this.noticeWriter = noticeWriter;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Notice [noticeNo=" + noticeNo + ", noticeTtitle=" + noticeTtitle + ", noticeContent=" + noticeContent
				+ ", noticeWriter=" + noticeWriter + ", count=" + count + ", createDate=" + createDate + ", status="
				+ status + "]";
	}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
