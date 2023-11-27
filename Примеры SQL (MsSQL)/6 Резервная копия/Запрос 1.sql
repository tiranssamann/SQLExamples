
--�������� �� ������� ������
DBCC CHECKDB ('InternetShop_Zakarin_Artur') WITH NO_INFOMSGS
DBCC CHECKDB ('InternetShop_Zakarin_Artur') WITH ALL_ERRORMSGS
GO
-- �������� ���������� ��� ���������� �����������
EXECUTE sp_addumpdevice 'disk','InternetShop_Zakarin_Artur_backup','E:\InternetShop_Zakarin_Artur_backup.bak'
GO
-- �������� �� ������� ����������
EXECUTE sp_helpdevice --@devname='MyLibrarymy_backup111'
GO
-- �������� ������ ���� ������
BACKUP DATABASE InternetShop_Zakarin_Artur TO InternetShop_Zakarin_Artur_backup WITH INIT
GO
BACKUP DATABASE InternetShop_Zakarin_Artur TO InternetShop_Zakarin_Artur_backup WITH DIFFERENTIAL,NOINIT
GO
--�������������� ���� ������
RESTORE DATABASE InternetShop_Zakarin_Artur FROM InternetShop_Zakarin_Artur_backup WITH REPLACE
GO
