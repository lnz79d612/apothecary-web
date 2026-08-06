import os

# --- CONFIGURAZIONE ---
# Nome del file finale che verrà creato
NOME_FILE_OUTPUT = "tutto_il_codice.txt"

# Cartelle da ignorare (per non copiare file inutili o di sistema)
CARTELLE_IGNORATE = {
    '.git', 'node_modules', '__pycache__', '.idea', '.vscode',
    'build', 'dist', 'env', 'venv', '.DS_Store'
}

# Estensioni di file da includere (aggiungi qui quelle che usi)
ESTENSIONI_VALIDE = {
    '.py', '.js', '.jsx', '.ts', '.tsx', '.html', '.css',
    '.json', '.java', '.c', '.cpp', '.h', '.swift', '.kt', '.dart'
}

def unisci_files():
    percorso_corrente = os.getcwd()
    
    with open(NOME_FILE_OUTPUT, 'w', encoding='utf-8') as outfile:
        outfile.write(f"--- INIZIO PROGETTO ---\n\n")
        
        for root, dirs, files in os.walk(percorso_corrente):
            # Rimuove le cartelle ignorate dalla ricerca
            dirs[:] = [d for d in dirs if d not in CARTELLE_IGNORATE]
            
            for file in files:
                estensione = os.path.splitext(file)[1]
                
                # Se il file ha un'estensione valida, lo copiamo
                if estensione in ESTENSIONI_VALIDE:
                    path_completo = os.path.join(root, file)
                    path_relativo = os.path.relpath(path_completo, percorso_corrente)
                    
                    try:
                        with open(path_completo, 'r', encoding='utf-8') as infile:
                            contenuto = infile.read()
                            
                            # Scriviamo il nome del file e il contenuto
                            outfile.write(f"\n{'='*50}\n")
                            outfile.write(f"FILE: {path_relativo}\n")
                            outfile.write(f"{'='*50}\n")
                            outfile.write(contenuto + "\n")
                            print(f"Aggiunto: {path_relativo}")
                            
                    except Exception as e:
                        print(f"Errore leggendo {path_relativo}: {e}")

    print(f"\nFatto! Tutto il codice è stato salvato in: {NOME_FILE_OUTPUT}")

if __name__ == "__main__":
    unisci_files()
