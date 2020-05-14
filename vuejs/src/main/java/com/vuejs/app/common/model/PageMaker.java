package com.vuejs.app.common.model;

public class PageMaker {

	private Criteria cri;
	private int totalCount;
	private int startPage;
	private int endPage;
	private boolean prev;
	private boolean next;
	private int displayPageNum = 10;

	public Criteria getCri() {
		return cri;
	}

	public void setCri(Criteria cri) {
		this.cri = cri;
	}

	public int getTotalCount() {
		return totalCount;
	}

	/* �� �Խñ� ���� �����Ҷ� calcData() �޼��带 ȣ���Ͽ� ����¡ ���� ��ư ��� */
	public void setTotalCount(int totalCount) {
	    this.totalCount = totalCount;
	    calcData();
	}

  /* ����¡�� ��ư���� �����ϴ� ������ �������. �� ������ ��ȣ, ���� ������ ��ȣ, ����, ���� ��ư���� ����
   * @cri.getPage() ���� ������ ��ȣ
   * @cri.getPerPageNum() : �� �������� ������ �Խñ��� ����
   * �� ������ ��ȣ = (���� ������ ��ȣ / ȭ�鿡 ������ ������ ��ȣ�� ����) * ȭ�鿡 ������ ������ ��ȣ�� ����
   * ������ ������ ��ȣ = �� �Խñ� �� / �� �������� ������ �Խñ��� ����
   */
	private void calcData() {
	    endPage = (int) (Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);
	    int tempEndPage = (int) (Math.ceil(totalCount / (double) cri.getPerPageNum()));
	    if (endPage > tempEndPage) {
	      endPage = tempEndPage;
	    }

	    startPage = (endPage - displayPageNum) + 1;
	    if(startPage <= 0) startPage = 1 ;

	    prev = startPage == 1 ? false : true;
	    next = endPage * cri.getPerPageNum() >= totalCount ? false : true;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getDisplayPageNum() {
		return displayPageNum;
	}

	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}

}