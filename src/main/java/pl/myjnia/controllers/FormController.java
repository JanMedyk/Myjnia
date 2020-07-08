package pl.myjnia.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@SessionAttributes({"rozmiar", "nrRej", "nazwaAuta"})
public class FormController {
    @RequestMapping("/")
    public String start() {

        return "form";

    }

    @PostMapping("/")
    @ResponseBody
    public void pobranie(HttpServletResponse request, Model model, @RequestParam String rozmiar, @RequestParam String nrRej, @RequestParam String nazwaAuta ,@RequestParam String[] uslugi) throws IOException {
        model.addAttribute("rozmiar",rozmiar);
        model.addAttribute("nrRej",nrRej);
        model.addAttribute("nazwaAuta",nazwaAuta);
        model.addAttribute("uslugi",uslugi);

        request.sendRedirect("/form2");

    }
    @RequestMapping("/form2")
    public String form2(HttpSession session) {
        session.getAttribute("rozmiar");

        return "form2";

    }


    ;


}
