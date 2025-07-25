# CI/CD Troubleshooting Guide

Această documentație oferă soluții pentru cele mai frecvente erori întâlnite în pipeline-urile GitHub Actions.

---

## 1. Permission denied

**Cauză:** Fișierele sau directoarele au permisiuni incorecte.
**Soluție:**
```bash
sudo chown -R $USER:$USER .
sudo chmod -R 755 .

