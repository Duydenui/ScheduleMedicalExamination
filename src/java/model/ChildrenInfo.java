
package model;

public class ChildrenInfo {
    private String childrenName;
    private String childrenGender;
    private int childrenAge;

    public ChildrenInfo(String childrenName, String childrenGender, int childrenAge) {
        this.childrenName = childrenName;
        this.childrenGender = childrenGender;
        this.childrenAge = childrenAge;
    }

    public String getChildrenName() {
        return childrenName;
    }

    public void setChildrenName(String childrenName) {
        this.childrenName = childrenName;
    }

    public String getChildrenGender() {
        return childrenGender;
    }

    public void setChildrenGender(String childrenGender) {
        this.childrenGender = childrenGender;
    }

    public int getChildrenAge() {
        return childrenAge;
    }

    public void setChildrenAge(int childrenAge) {
        this.childrenAge = childrenAge;
    }
    
}

