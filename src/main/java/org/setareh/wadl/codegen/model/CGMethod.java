package org.setareh.wadl.codegen.model;

/**
 * @author: alexandre_godet
 * @since: MXXX
 */
public class CGMethod implements Cloneable {
    private ClassInfo request;
    private ClassInfo response;
    private String name;
    private String type;
    private String path;
    private ClassInfo fault;

    public ClassInfo getRequest() {
        return request;
    }

    public void setRequest(ClassInfo request) {
        this.request = request;
    }

    public ClassInfo getResponse() {
        return response;
    }

    public void setResponse(ClassInfo response) {
        this.response = response;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public void setFault(ClassInfo fault) {
        this.fault = fault;
    }

    public ClassInfo getFault() {
        return fault;
    }

    @Override
    public CGMethod clone() {
        final CGMethod cgMethod = new CGMethod();
        cgMethod.request = this.request;
        cgMethod.response = this.response;
        cgMethod.name = this.name;
        cgMethod.type = this.type;
        cgMethod.path = this.path;
        cgMethod.fault = this.fault;
        return cgMethod;
    }
}
