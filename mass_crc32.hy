(import os)
(import binascii)
(import argparse)
(import io)

(setv parser (.ArgumentParser argparse))
(.add_argument parser "folder")

(defn padded_hex [dec_crc32]
    (.rjust (.replace (hex dec_crc32) "0x" "") 8 "0") 
)

(defn main [args]
    (setv folder args.folder)
    (print (.format "going to check cartoons in this folder, recursively" folder))
    (for [[path_ dirs_ fnames_] (os.walk folder)]
        (print (.format "{0} has {1} files and {2} subfolders" path_ (len fnames_) (len dirs_)))
        ;;do the calculation
        (setv full_fnames_ (map (lambda [x] (os.path.join path_ x)) fnames_))
        (for [filename full_fnames_]
            (with [[f (open filename "rb")]]
                ;;(setv buffer (.read f))
                (setv crc32_hash (binascii.crc32 (.read f)))
                (print (.format "crc32: {} => {}" filename (padded_hex crc32_hash)))
            )
        )
    )
)

(if (= __name__ "__main__")
    (do
      (setv args (.parse_args parser))
      (main args)
    )
    (print "bro pls")  
)
