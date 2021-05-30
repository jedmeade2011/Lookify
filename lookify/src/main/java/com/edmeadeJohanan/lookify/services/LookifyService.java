package com.edmeadeJohanan.lookify.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.edmeadeJohanan.lookify.models.Lookify;
import com.edmeadeJohanan.lookify.repositories.LookifyRepository;

@Service
public class LookifyService {
	private LookifyRepository lookRepo;
	
	public LookifyService(LookifyRepository repo) {
		this.lookRepo = repo;
	}
	
	public List<Lookify> allSongs(){
		return this.lookRepo.findAll();
	}
	public List<Lookify> thisSong(String artist){
		return this.lookRepo.findByArtistContaining(artist);
	}
	public List<Lookify> getTopTen(){
		return this.lookRepo.findTop10ByOrderByRatingDesc();
	}
	
	public Lookify getOneSong(Long id) {
		return this.lookRepo.findById(id).orElse(null);
	}
	
	public Lookify createSong(Lookify newSong) {
		return this.lookRepo.save(newSong);
	}
	
	public Lookify updateSong(Lookify song) {
		return this.lookRepo.save(song);
	}
	
	public void deleteSong(Long id) {
		this.lookRepo.deleteById(id);
	}
//	public List<Lookify> thisArtist(String string) {
//		return this.lookRepo.findByArtist(string);
//	}
}
