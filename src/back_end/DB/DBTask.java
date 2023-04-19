package back_end.DB;

import java.util.ArrayList;

public class DBTask {
    private static ArrayList<Task>tasks=new ArrayList<Task>();
    private  static int id=4;
    static{
        tasks.add(new Task(
                1,
                "English A1",
                "Do homework",
                "13.03.1994")
        );
        tasks.add(new Task(
                2,
                "Java EE",
                "Easy to do!",
                "22.12.2013")
        );
        tasks.add(new Task(
                3,
                "Cisco",
                "I can give bonus task",
                "03.04.2023")
        );
        tasks.add(new Task(
                4,
                "DBMS",
                "No way!",
                "31.08.2009")
        );
    }
    public static ArrayList<Task> getAlltask(){
        return tasks;
    }
    public static void addtask(Task task){
        id++;
        task.setID(id);
        tasks.add(task);
    }
    public static Task getTask(int id){
        return tasks.stream().filter(task->task.getID()==id).findFirst().orElse(null);
    }
    public static void deletetask(int ID){
        for (int i = 0; i < tasks.size(); i++) {
            if(tasks.get(i).getID()==id){
                tasks.remove(i);
                break;
            }
        }
    }

}
