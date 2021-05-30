package com.edmeadeJohanan.lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.edmeadeJohanan.lookify.models.Lookify;
import com.edmeadeJohanan.lookify.services.LookifyService;

@RestController
public class LookifyController {
	@Autowired
	private LookifyService lookServe;
	
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@GetMapping("/dashboard")
	public String main(Model model) {
		List<Lookify> song = lookServe.allSongs();
		model.addAttribute("song", song);
		return "main.jsp";
	}
	@GetMapping("/songs/new")
	public String newSong(@ModelAttribute("song")Lookify song){
		return "create.jsp";
	}
	@PostMapping("/dashboard")
	public String create(@Valid @ModelAttribute("song")Lookify song, BindingResult result) {
		if(result.hasErrors()) {
			return "create.jsp";
		}else {
			lookServe.createSong(song);
			return "redirect:/dashboard";
		}
	}
	@GetMapping("/songs/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		Lookify song = lookServe.getOneSong(id);
		model.addAttribute("song", song);
		return "showInfo.jsp";
	}
	@GetMapping("/songs/topTen")
	public String topTen(Model model) {
		model.addAttribute("songs", lookServe.getTopTen());
		return "topTen.jsp";
	}
	@GetMapping("/songs/delete/{id}")
	public String delete(@PathVariable("id")Long id) {
		lookServe.deleteSong(id);
		return "redirect:/dashboard";
	}
	@GetMapping("/songs/search")
	public String search(@RequestParam("artist")String artist, Model model) {
		model.addAttribute("songs", lookServe.thisSong(artist));
		model.addAttribute("artist", artist);
		return "results.jsp";
	}
}
