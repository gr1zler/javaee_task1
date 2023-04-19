package back_end.DB;

public class Task {
    private long ID;
    private String name;
    private String Discription;
    private String DeadlineDate;
    public Task(){

    }

    public Task(long ID, String name, String discription, String deadlineDate) {
        this.ID = ID;
        this.name = name;
        Discription = discription;
        DeadlineDate = deadlineDate;
    }

    public long getID() {
        return ID;
    }

    public void setID(long ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDiscription() {
        return Discription;
    }

    public void setDiscription(String discription) {
        Discription = discription;
    }

    public String getDeadlineDate() {
        return DeadlineDate;
    }

    public void setDeadlineDate(String deadlineDate) {
        DeadlineDate = deadlineDate;
    }
}
