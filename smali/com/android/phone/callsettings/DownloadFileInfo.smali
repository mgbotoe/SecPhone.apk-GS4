.class Lcom/android/phone/callsettings/DownloadFileInfo;
.super Ljava/lang/Object;
.source "PhoneNumberLocatorDownloader.java"


# instance fields
.field public crc32CalculateFromData:J

.field public crc32ReadFromFile:J

.field public endmarker:J

.field public fileName:Ljava/lang/String;

.field public fileSize:J

.field public startmarker:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide v0, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    .line 66
    iput-wide v0, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->startmarker:J

    .line 67
    iput-wide v0, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->endmarker:J

    .line 68
    iput-wide v0, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->crc32ReadFromFile:J

    .line 69
    iput-wide v0, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->crc32CalculateFromData:J

    return-void
.end method


# virtual methods
.method public isValidFile()Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v7, 0x0

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, isValidFile:Z
    iget-wide v3, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->crc32ReadFromFile:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->crc32CalculateFromData:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 79
    iget-wide v3, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->crc32ReadFromFile:J

    iget-wide v5, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->crc32CalculateFromData:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v0, v1

    .line 81
    :cond_0
    :goto_0
    iget-wide v3, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->startmarker:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->endmarker:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1

    .line 82
    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->startmarker:J

    iget-wide v5, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->endmarker:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    move v0, v1

    .line 84
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v2

    .line 79
    goto :goto_0

    :cond_3
    move v0, v2

    .line 82
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x180

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nfileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nfileSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/callsettings/DownloadFileInfo;->fileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
