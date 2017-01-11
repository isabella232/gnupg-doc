@echo off

set BIN_PREFIX=d:\gnupg
set GPGSCM_PATH=%BIN_PREFIX%/tests/gpgscm;%BIN_PREFIX%/tests/openpgp
set EXEEXT=.exe
set srcdir=%BIN_PREFIX%/tests/openpgp
set TMP=c:\temp
set WD=c:\temp\logs
mkdir %TMP%
mkdir %WD%

cd /d %BIN_PREFIX%
%BIN_PREFIX%\gpgscm.exe --verbose tests/gpgscm/t-child.scm

cd /d %WD%

rem the gpgtar.scm is acting up (looping), and we don't deal with that
rem well atm, so we simply omit it

echo Running tests...
%BIN_PREFIX%\gpgscm.exe %srcdir%/run-tests.scm --parallel version.scm enarmor.scm mds.scm decrypt.scm decrypt-multifile.scm decrypt-dsa.scm decrypt-session-key.scm sigs.scm sigs-dsa.scm encrypt.scm encrypt-multifile.scm encrypt-dsa.scm compression.scm seat.scm clearsig.scm encryptp.scm detach.scm detachm.scm armsigs.scm armencrypt.scm armencryptp.scm signencrypt.scm signencrypt-dsa.scm armsignencrypt.scm armdetach.scm armdetachm.scm genkey1024.scm conventional.scm conventional-mdc.scm multisig.scm verify.scm verify-multifile.scm gpgv-forged-keyring.scm armor.scm import.scm import-revocation-certificate.scm ecc.scm 4gb-packet.scm tofu.scm use-exact-key.scm default-key.scm export.scm ssh-import.scm ssh-export.scm quick-key-manipulation.scm key-selection.scm delete-keys.scm gpgconf.scm issue2015.scm issue2346.scm issue2417.scm issue2419.scm
