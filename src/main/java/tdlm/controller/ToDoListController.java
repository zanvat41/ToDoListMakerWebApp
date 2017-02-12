package tdlm.controller;

import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.support.SessionStatus;
import tdlm.data.ToDoItem;
import tdlm.data.ToDoList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Matthew Wong on 2/6/2017.
 */
@Controller
@RequestMapping("/addItem")
public class ToDoListController {

    //the to do list
    ToDoList list;

    //method that is called when a get request for the addItem.jsp form arrives
    @RequestMapping(method = RequestMethod.GET)
    public String viewAddItemForm(ModelMap model) {
        System.out.println("SPRING GOT THE REQUEST");

        //create a new to do item to hold the form info from the user when they complete it, then add it to the model
        //this associates the form data with the item
        model.addAttribute("item", new ToDoItem());

        //send the user to the addItem.jsp form
        return "addItem";

    }

    //method that is used when the user completes the form to add the item to the list
    @RequestMapping(method = RequestMethod.POST)
    public String completeAddItemForm(@ModelAttribute("item") ToDoItem item, BindingResult result, SessionStatus status) {

        //add the item to the end of the list
        list.addItem(item);

        //testing prints, get the category of the last item added and print it out
        System.out.println(list.getItems().get(list.getItems().size() - 1).getCategory());

        //send the user to home.jsp
        return "/home.jsp";
    }
}
