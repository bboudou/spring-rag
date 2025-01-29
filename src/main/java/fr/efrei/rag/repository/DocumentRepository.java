package fr.efrei.rag.repository;

import fr.efrei.rag.domain.Document;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DocumentRepository extends JpaRepository<Document, Long> {
    @Query("select distinct new fr.efrei.rag.repository.dto.DocumentDTO(d.id, d.title) from Document d")
    List<Document> findAllDocuments();
}