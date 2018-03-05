/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Bihar_Regiment
 */
public class StudentPass {
    private String roll;
    private String pass;
    private String name;

    public StudentPass() {
    }
    
    
    public StudentPass(String roll, String pass, String name) {
        this.name = name;
        this.pass = pass;
        this.roll = roll;
    }

    public String getName() {
        return name;
    }

    public String getPass() {
        return pass;
    }

    public String getRoll() {
        return roll;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public void setRoll(String roll) {
        this.roll = roll;
    }
}
