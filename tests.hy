(import unittest)
(import [mass_crc32 :as crc])

(defclass TestPaddedHex [unittest.TestCase] [])

;;I can't get actual methods to work. wtf.
(setv TestPaddedHex.test_fullHex
    (fn [self]
        (self.assertEqual (crc.padded_hex 0x12345678) "12345678")))

(setv TestPaddedHex.test_lowerHex
    (fn [self]
        (self.assertEqual (crc.padded_hex 0x1AC) "000001AC")))


;;(-> (dir TestPaddedHex) (print))

(if (= __name__ "__main__")
    (unittest.main)
    nil)
