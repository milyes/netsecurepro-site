import os
import sys
from pdf2image import convert_from_path
from pathlib import Path

def extract_images(pdf_path, output_dir="output_images", dpi=300):
    pdf_path = Path(pdf_path)
    output_dir = Path(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)

    try:
        print(f"[INFO] Extraction des pages du fichier : {pdf_path}")
        images = convert_from_path(str(pdf_path), dpi=dpi)
        for i, img in enumerate(images):
            output_file = output_dir / f"page_{i+1:03}.png"
            img.save(output_file, "PNG")
            print(f"[OK] Image enregistrée : {output_file}")
        print(f"[FINI] {len(images)} page(s) extraite(s) dans {output_dir}")
    except Exception as e:
        print(f"[ERREUR] {e}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Utilisation : python3 pdf_to_clean_images_cli.py <fichier.pdf> [dossier_output]")
        sys.exit(1)

    pdf_file = sys.argv[1]
    output_folder = sys.argv[2] if len(sys.argv) > 2 else "output_images"

    extract_images(pdf_file, output_folder)
