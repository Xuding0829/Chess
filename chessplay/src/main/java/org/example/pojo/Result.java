package org.example.pojo;

public class Result{
    private int code;
    private String message;
    private Object data;
    public Result(int code, String message, Object data){
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public Result(int code, String message){}

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public static Result success(Object data){
        return new Result(0, "success", data);
    }

    public static Result error(String message){
        return new Result(1, "error", message);
    }

    public static Result success(){
        return new Result(0, "success");
    }
}