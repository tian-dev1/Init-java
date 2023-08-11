package com.cristian.formularios;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
    int salario = 0;

    @GetMapping("/")
    public String home(){
        return "index";
    }

    @PostMapping("/registro")
    public String registro(
        Model model,
        @RequestParam("nombre") String nombre,
        @RequestParam("apellido") String apellido,
        @RequestParam("identificacion") String identificacion,
        @RequestParam("codigo") int codigo,
        HttpSession session ){

            
            salario += codigo;
            String usuario = nombre + codigo + apellido;

            session.setAttribute("salario", salario);
            session.setAttribute("usuario", usuario);

            //model.addAttribute("salario", salario);
            //model.addAttribute("usuario", nombre+codigo+apellido);
            

            return "redirect:/principal"; //Funciona como get

    }

    @GetMapping("/principal")
    public String registro(HttpSession session, Model model){
        String usuario = (String) session.getAttribute("usuario");
        int salario = (int) session.getAttribute("salario");

        model.addAttribute("usuario", usuario);
        model.addAttribute("salario", salario);
        return "principal";
    }
}
