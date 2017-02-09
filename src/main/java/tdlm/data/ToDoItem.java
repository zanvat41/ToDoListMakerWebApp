package tdlm.data;

import java.util.Date;
import javafx.beans.property.BooleanProperty;
import javafx.beans.property.ObjectProperty;
import javafx.beans.property.SimpleBooleanProperty;
import javafx.beans.property.SimpleObjectProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.beans.property.StringProperty;

/**
 *
 * @author McKillaGorilla
 */
public class ToDoItem {
    public static final String DEFAULT_CATEGORY = "?";
    public static final String DEFAULT_DESCRIPTION = "?";
    public static final Date DEFAULT_DATE = new Date();
    public static final boolean DEFAULT_COMPLETED = false;

    final StringProperty category;
    final StringProperty description;
    final ObjectProperty<Date> startDate;
    final ObjectProperty<Date> endDate;
    final BooleanProperty completed;

    public ToDoItem() {
        category = new SimpleStringProperty(DEFAULT_CATEGORY);
        description = new SimpleStringProperty(DEFAULT_DESCRIPTION);
        startDate = new SimpleObjectProperty(DEFAULT_DATE);
        endDate = new SimpleObjectProperty(DEFAULT_DATE);
        completed = new SimpleBooleanProperty(DEFAULT_COMPLETED);
    }

    public ToDoItem(String initCategory, String initDescription, Date initStartDate, Date initEndDate, boolean initCompleted) {
        this();
        category.set(initCategory);
        description.set(initDescription);
        startDate.set(initStartDate);
        endDate.set(initEndDate);
        completed.set(initCompleted);
    }

    public String getCategory() {
        return category.get();
    }

    public void setCategory(String value) {
        category.set(value);
    }

    public StringProperty categoryProperty() {
        return category;
    }

    public String getDescription() {
        return description.get();
    }

    public void setDescription(String value) {
        description.set(value);
    }

    public StringProperty descriptionProperty() {
        return description;
    }

    public Date getStartDate() {
        return startDate.get();
    }

    public void setStartDate(Date value) {
        startDate.set(value);
    }

    public ObjectProperty startDateProperty() {
        return startDate;
    }

    public Date getEndDate() {
        return endDate.get();
    }

    public void setEndDate(Date value) {
        endDate.set(value);
    }

    public ObjectProperty endDateProperty() {
        return endDate;
    }

    public boolean getCompleted() {
        return completed.get();
    }

    public void setCompleted(boolean value) {
        completed.set(value);
    }

    public BooleanProperty completedProperty() {
        return completed;
    }

    public void reset() {
        setCategory(DEFAULT_CATEGORY);
        setDescription(DEFAULT_DESCRIPTION);
        setStartDate(DEFAULT_DATE);
        setEndDate(DEFAULT_DATE);
        setCompleted(DEFAULT_COMPLETED);
    }
}
