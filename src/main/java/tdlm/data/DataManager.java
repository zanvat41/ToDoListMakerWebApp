package tdlm.data;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import saf.components.AppDataComponent;
import saf.AppTemplate;

/**
 * This class serves as the data management component for this application.
 *
 * @author Richard McKenna
 * @version 1.0
 */
public class DataManager implements AppDataComponent {
    // FIRST THE THINGS THAT HAVE TO BE SAVED TO FILES

    // NAME OF THE TODO LIST
    StringProperty name;

    // LIST OWNER
    StringProperty owner;

    // THESE ARE THE ITEMS IN THE TODO LIST
    ObservableList<ToDoItem> items;

    // THIS IS A SHARED REFERENCE TO THE APPLICATION
    AppTemplate app;

    /**
     * THis constructor creates the data manager and sets up the
     *
     *
     * @param initApp The application within which this data manager is serving.
     */
    public DataManager(AppTemplate initApp) throws Exception {
        // KEEP THE APP FOR LATER
        app = initApp;

        name = new SimpleStringProperty();
        owner = new SimpleStringProperty();
        items = FXCollections.observableArrayList();
    }

    public ObservableList<ToDoItem> getItems() {
        return items;
    }

    public StringProperty getNameProperty() {
        return name;
    }
    public String getName() {
        return name.get();
    }

    public StringProperty getOwnerProperty() {
        return owner;
    }

    public String getOwner() {
        return owner.get();
    }

    public void setName(String initName) {
        name.setValue(initName);
    }

    public void setOwner(String initOwner) {
        owner.setValue(initOwner);
    }

    public void addItem(ToDoItem item) {
        items.add(item);
        app.getGUI().updateToolbarControls(false);

    }

    public void moveItemUp(ToDoItem item) {
        int index = items.indexOf(item);
        if (index > 0) {
            // DO A SWAP
            ToDoItem temp = items.get(index-1);
            items.set(index-1, item);
            items.set(index, temp);
            app.getGUI().updateToolbarControls(false);
        }
    }

    public void moveItemDown(ToDoItem item) {
        int index = items.indexOf(item);
        if (index < (items.size() - 1)) {
            // DO A SWAP
            ToDoItem temp = items.get(index+1);
            items.set(index+1, item);
            items.set(index, temp);
            app.getGUI().updateToolbarControls(false);
        }
    }

    public void removeItem(ToDoItem item) {
        if (items.contains(item)) {
            items.remove(item);
            app.getGUI().updateToolbarControls(false);
        }
    }

    /**
     *
     */
    @Override
    public void reset() {

    }
}
