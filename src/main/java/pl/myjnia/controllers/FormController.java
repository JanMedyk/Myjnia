package pl.myjnia.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.myjnia.CenyLakier;
import pl.myjnia.CenyMycie;
import pl.myjnia.enumSizes;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;

@Controller
@SessionAttributes({"rozmiar", "nrRej", "nazwaAuta", "uslugi","MycieKomplet","osadMeteliczny","osadZeSmoly","sumaMin","sumaMax"})

public class FormController {
    @RequestMapping("/")
    public String start() {

        return "form";

    }

    @PostMapping("/")
    @ResponseBody
    public void pobranie(HttpServletResponse request, Model model, @RequestParam String rozmiar, @RequestParam String nrRej, @RequestParam String nazwaAuta, @RequestParam String[] uslugi) throws IOException {

        model.addAttribute("rozmiar", enumSizes.valueOf(rozmiar).getRozmiar());
        model.addAttribute("nrRej", nrRej);
        model.addAttribute("nazwaAuta", nazwaAuta);
        model.addAttribute("uslugi", uslugi);

        request.sendRedirect("/form2");

    }

    @RequestMapping("/form2")

    public String form2(HttpSession session, Model model) {
        String rozmiar = (String) session.getAttribute("rozmiar");
        if (find("mycie", (String[]) session.getAttribute("uslugi"))) {
            model.addAttribute("mycie", "Mycie");
            CenyMycie cenyMycie = new CenyMycie(rozmiar);
            model.addAttribute("cenyMycie", cenyMycie);


        }
        if (find("lakier", (String[]) session.getAttribute("uslugi"))) {
            model.addAttribute("lakier", "lakier");
            CenyLakier cenyLakier = new CenyLakier(rozmiar);
            model.addAttribute("cenyLakier", cenyLakier);
        }
        if (find("pranie", (String[]) session.getAttribute("uslugi"))) {
            model.addAttribute("pranie", "pranie");
        }


        return "form2";

    }

    @PostMapping("/form2")
    @ResponseBody
    public void podsuowanie(@RequestParam Map<String, String> allParams, Model model,HttpServletResponse request) throws IOException {
                model.addAllAttributes(allParams);

               int suma= allParams.values().stream().mapToInt(Integer::parseInt).sum();
                    int suma2=suma-(Integer.parseInt(allParams.get("PrzedzialMax")+Integer.parseInt(allParams.get("PrzedzialMin"))));
                    int sumaMin=suma2+Integer.parseInt(allParams.get("PrzedzialMin"));
                    int sumaMax=suma2+Integer.parseInt(allParams.get("PrzedzialMax"));
                       model.addAttribute("sumaMin",sumaMin);
                       model.addAttribute("sumaMax",sumaMax);


        request.sendRedirect("/form3");

    }
    @RequestMapping("form3")

    public String form3(){

        return "form3";
    }


    public boolean find(String usluga, String[] tablica) {


        return (Arrays.asList(tablica).contains(usluga));

    }


}
