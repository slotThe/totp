TB‿SHA1‿HMAC‿B32d‿HOTP‿TOTP ← •Import "./totp.bqn"

StB ← { ∾ 2‿8⊸TB¨𝕩-@ } # String to bits
THP ← { l‿p 𝕊 x:       # To hex and partition
  ∾ {(⊑⊏⟜"0123456789abcdef")¨ 16‿p TB 2⊸×⊸+˜´⌽𝕩}¨ ((l÷˜≠x)⥊l) /⊸⊔ x
}

!"37c02ae03ed75621c21f23b45a36729f815fef12"≡ 32‿≠ THP SHA1 StB "NERD!"
!"1cb17828672f7c4b3d4a85ac5327ea8473b39a7f"≡ 8‿≠ THP (StB "abc") HMAC (StB "NERD!")
!"cb9ad7c632c66e2bbc26969e1f9badfbabeee86"≡ 8‿≠ THP ⟨⟩ HMAC (StB "NERD!")
!("Hell!"∾@+10)≡ (@⊸+ ·2⊸×⊸+˜´⌽)˘ ∘‿8⥊ B32d "JBSWY3BBBI======"
!"ce278c13a5700d6eb17f5c6d45f2d3cada903332"≡ 8‿2 THP B32d "ZYTYYE5FOAGW5ML7LRWUL4WTZLNJAMZS"
!"130932"≡ "ZYTYYE5FOAGW5ML7LRWUL4WTZLNJAMZS" HOTP 58675511
