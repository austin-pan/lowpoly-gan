echo "Downloading Datasets from Google Drive..."
gdown --id "1ovdl5wFAi9b3dFpCPml4eSHK-QdrwoRx" # Download low-poly dataset
gdown --id "1CEUrN0exEHB_jo_c7g4f6-_4BaG1uuFJ" # Download pixel and cartoon datasets
gdown --id "1GQhIwSostruWCjFYxaX9JukeTXZi17HC" # Download photos dataset

lowzip="lowpoly.zip"
phozip="photo_dataset.zip"
pixzip="pixel_training_dataset.zip"

low="lowpoly_dataset"
pho="photo_dataset"
pix="pixel_cartoon_datasets"

mkdir $low
mkdir $pho
mkdir $pix

echo -e "Unzipping \033[1m${lowzip}\033[0m..."
unzip -q $lowzip -d $low
echo -e "Unzipping \033[1m${phozip}\033[0m..."
unzip -q $phozip -d $pho
echo -e "Unzipping \033[1m${pixzip}\033[0m..."
unzip -q $pixzip -d $pix

echo "Cleaning Directory..."
rm -rf */__MACOSX
rm $lowzip
rm $phozip
rm $pixzip

