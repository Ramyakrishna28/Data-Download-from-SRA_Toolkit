# Unzip the SRA Toolkit (if not already extracted)
unzip sratoolkit.current-win64.zip

# Navigate to the SRA Toolkit directory
cd sratoolkit.<version>-win64

# List contents to verify
ls

# Change to the bin directory
cd <path_to_sratoolkit>/bin

# Download SRA samples using fastq-dump
fastq-dump <SRA_ID> --outdir <output_directory>

# To process multiple SRA IDs, create a list and loop through them
for id in <SRA_ID1> <SRA_ID2> <SRA_ID3>; do
    fastq-dump "$id" --outdir <output_directory>
done
