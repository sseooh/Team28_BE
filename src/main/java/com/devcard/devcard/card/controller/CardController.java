package com.devcard.devcard.card.controller;

import com.devcard.devcard.card.dto.CardResponseDto;
import com.devcard.devcard.card.model.Card;
import com.devcard.devcard.card.dto.CardRequestDto;
import com.devcard.devcard.card.service.CardService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/cards")
public class CardController {

    private final CardService cardService;

    public CardController(CardService cardService) {
        this.cardService = cardService;
    }

    @PostMapping()
    public void createCard(@RequestBody CardRequestDto cardRequestDto) {
        cardService.createCard(cardRequestDto.toEntity());
    }

    @GetMapping("/{id}")
    public ResponseEntity<CardResponseDto> getCard(@PathVariable(name="id") Long id) {
        Card card = cardService.getCard(id);
        return ResponseEntity.ok(CardResponseDto.fromEntity(card));
    }

    @PutMapping("/{id}")
    public ResponseEntity<CardResponseDto> updateCard(@PathVariable Long id, @RequestBody CardRequestDto cardRequestDto) {
        Card updatedCard = cardService.updateCard(id, cardRequestDto.toEntity());
        return ResponseEntity.ok(CardResponseDto.fromEntity(updatedCard));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCard(@PathVariable Long id) {
        cardService.deleteCard(id);
        return ResponseEntity.noContent().build();
    }


}
