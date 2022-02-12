# Low Poly Algorithm

Heavily drawn from Samuel Hilton's [tutorial](https://cosmiccoding.com.au/tutorials/lowpoly).

## Dependencies

python3

- scipy
- matplotlib
- numpy
- pygame

```bash
python -m pip install -r requirements.txt
```

## Execution

The `lowpoly.sh` script will create low-poly versions of all of the images in the `lowpoly/in` directory and output them into the `lowpoly/output` directory.

The `ranges` variable at the end of `lowpoly.py` defines the complexity of the generated low-poly image.

To run the script, use `bash lowpoly.sh`.

The current implementation is quite limited and can definitely be made to be more customizable. Examples of this is allowing for user input on complexity of generated image.
