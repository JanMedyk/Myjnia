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
import java.util.Collection;
import java.util.Map;

@Controller
@SessionAttributes({"rozmiarNazwa","uwagi","cenaUwagi","rozmiar", "nrRej", "onestep", "dwaStep", "PrzedzialMin", "PrzedzialMax", "trzyStep", "TapicerkaSkorzana", "jednoKrzeslo", "FotelPrzod", "FotelTyl", "nazwaAuta", "uslugi", "woskpremium", "niewidzialnaWycieraczka", "MycieKomplet", "MycieWew", "MycieZew", "woskTwardy", "osadMetaliczny", "suma", "osadZeSmoly", "sumaMin", "sumaMax"})

public class FormController {
    @RequestMapping("/")
    public String start() {

        return "form";

    }

    @PostMapping("/")
    @ResponseBody
    public void pobranie(HttpServletResponse request, Model model, @RequestParam String rozmiar, @RequestParam String nrRej, @RequestParam String nazwaAuta, @RequestParam String[] uslugi) throws IOException {
        model.addAttribute("rozmiarNazwa",rozmiar);
        model.addAttribute("rozmiar", enumSizes.valueOf(rozmiar).getRozmiar());
        model.addAttribute("nrRej", nrRej);
        model.addAttribute("nazwaAuta", nazwaAuta);
        model.addAttribute("uslugi", uslugi);

        request.sendRedirect("/Myjnia3/form2");

    }

    @RequestMapping("/form2")

    public String form2(HttpSession session, Model model) {
        String rozmiar = (String) session.getAttribute("rozmiar");
        if (find("mycie", (String[]) session.getAttribute("uslugi"))) {
//            model.addAttribute("mycie", "Mycie");
            CenyMycie cenyMycie = new CenyMycie(rozmiar);
            model.addAttribute("cenyMycie", cenyMycie);
            session.setAttribute("mycie", "Mycie");


        } else {
            session.removeAttribute("mycie");

        }
        if (find("lakier", (String[]) session.getAttribute("uslugi"))) {
            session.setAttribute("lakier", "lakier");
            CenyLakier cenyLakier = new CenyLakier(rozmiar);
            model.addAttribute("cenyLakier", cenyLakier);
        } else {
            session.removeAttribute("lakier");
        }

        if (find("pranie", (String[]) session.getAttribute("uslugi"))) {
            session.setAttribute("pranie", "pranie");
        } else {
            session.removeAttribute("pranie");
        }


        return "form2";

    }

    @PostMapping("/form2")
    @ResponseBody
    public void podsuowanie(@RequestParam Map<String, String> allParams, Model model, HttpServletResponse
            request, HttpSession session) throws IOException {

        allParams.values().removeIf(e->e.isEmpty());
String uwagi=allParams.get("uwagi");
        model.addAttribute("uwagi",uwagi);
        allParams.keySet().removeIf(e->e.equals("uwagi"));
        model.addAllAttributes(allParams);


        int suma = allParams.values().stream().mapToInt(Integer::parseInt).sum();
        if (session.getAttribute("lakier") != null) {
            if (Integer.parseInt(allParams.get("PrzedzialMin")) != 0 && Integer.parseInt(allParams.get("PrzedzialMax")) != 0) {
                int przedzialMin = Integer.parseInt(allParams.get("PrzedzialMin"));
                int przedzialMax = Integer.parseInt(allParams.get("PrzedzialMax"));
                int suma2 = suma - przedzialMin - przedzialMax;
                int sumaMin = suma2 + przedzialMin;
                int sumaMax = suma2 + przedzialMax;
                model.addAttribute("PrzedzialMin");
                model.addAttribute("PrzedzialMax");
                model.addAttribute("sumaMin", sumaMin);
                model.addAttribute("sumaMax", sumaMax);
            }
            else {
                model.addAttribute("suma", suma);

        }
        }

        request.sendRedirect("/Myjnia3/form3");

    }

    @RequestMapping("/form3")

    public String form3() {

        return "form3";
    }


    public boolean find(String usluga, String[] tablica) {


        return (Arrays.asList(tablica).contains(usluga));

    }


}
