from pathlib import Path


def combine_c_files(input_directory, output_file):
    combined_text = []
    input_directory = Path(input_directory)
    output_file = Path(output_file)

    for file_path in sorted(input_directory.rglob("*.c")):
        if "build" in file_path.parts:
            continue

        combined_text.append(f"\n\n===== {file_path.relative_to(input_directory)} =====\n\n")
        combined_text.append(file_path.read_text(encoding="utf-8", errors="replace"))

    output_file.write_text("".join(combined_text), encoding="utf-8")

    print(f"Combined {len(combined_text) // 2} .c files into {output_file}")


if __name__ == "__main__":
    repo_root = Path(__file__).resolve().parents[1]
    combine_c_files(repo_root / "src", repo_root / "results" / "combined_sources.txt")
